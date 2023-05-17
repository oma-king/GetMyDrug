using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Xml;
using Dapper;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

/// <summary>
/// Summary description for FindMyDrug
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class FindMyDrug : System.Web.Services.WebService
{
    public SecuredTokenWS SoapHeader;

    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
    public string Authentication()
    { 
        if (SoapHeader == null)
            return "403.0 Forbidden - Unauthenticated !!!";
        if(string.IsNullOrEmpty(SoapHeader.Username) || string.IsNullOrEmpty(SoapHeader.Password))
            return "403.1 Forbidden - Unauthenticated !!!";

        // check if credential are valid
        if(!SoapHeader.IsUserCredentialsValid(SoapHeader.Username,SoapHeader.Password))
            return "403.2 Forbidden - Unauthenticated !!!";

        // Create and store the Authentication Token before returning it
        string token = TokenCipher.Encrypt(Guid.NewGuid().ToString(), "wdGL6HSa0Vn8A9sa6KyyR728WgQzpc2t");
        HttpRuntime.Cache.Add(
            token,
            SoapHeader.Username,
            null,
            System.Web.Caching.Cache.NoAbsoluteExpiration,
            TimeSpan.FromMinutes(30),
            System.Web.Caching.CacheItemPriority.NotRemovable,
            null
            );
        return token;

    }
   
    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
   
    public List<Pharmacy> FindMyDrugInPharmacies(string DrugName, string Region)
    {
        List<Pharmacy> results;
        if(DrugName == null || DrugName == "" || Region == null || Region == "")
            return results = null;

        if (SoapHeader == null)
            return results = null;
        if (!SoapHeader.IsUserCredentialsValid(SoapHeader))
            return results=null;

            using (IDbConnection db = new SqlConnection(ConfigurationManager.ConnectionStrings["GetMyDrugConnection"].ConnectionString))
        {
            if (db.State == ConnectionState.Closed)
                db.Open();
            var procedure = "_Proc_ListMyDrugInPharmacies";
            var values = new { DrugName = DrugName, Region = Region };
            results = db.Query<Pharmacy>(procedure, values, commandType: CommandType.StoredProcedure).ToList();
            return results;
        }
    }

    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]

    //public List<Itinerary> CalculateItineraryToPharmacy(string MyLatitude, string Mylongitude, string PhLatitude, string Phlongitude)
    public Itinerary CalculateItineraryToPharmacy(string MyLatitude, string Mylongitude, string PhLatitude, string Phlongitude)
    {
        XmlDocument xml = new XmlDocument();

        string totalLength = ""; 
        string totalSeconds = ""; 
    if (MyLatitude == null || MyLatitude == "" || Mylongitude == null || Mylongitude == "" || PhLatitude == null || PhLatitude == "" || Phlongitude == null || Phlongitude == "")
            return new Itinerary();

        if (SoapHeader == null)
        return new Itinerary();

        if (!SoapHeader.IsUserCredentialsValid(SoapHeader))
        return new Itinerary();
        string ApiUrl = System.Configuration.ConfigurationManager.AppSettings["ApiUrl"].ToString();
        var postData = "{\"from\":{\"y\":" + MyLatitude + ",\"x\":" + Mylongitude + "},\"to\":{\"y\":" + PhLatitude + ",\"x\":"+ Phlongitude + "},\"useCase\":\"LIVEMAP_PLANNING\",\"arriveAt\":true}";
        var request = (HttpWebRequest)WebRequest.Create(ApiUrl);
        var data = Encoding.ASCII.GetBytes(postData);
        request.Method = "POST";
        request.ContentType = "application/json";
        request.ContentLength = data.Length;

        using (var stream = request.GetRequestStream())
        {
            stream.Write(data, 0, data.Length);
        }
        var response = (HttpWebResponse)request.GetResponse();
        var responseString = new StreamReader(response.GetResponseStream()).ReadToEnd();
        var Jsonresponse = JObject.Parse(responseString);
        
        JArray alternatives = (JArray)Jsonresponse["alternatives"];
        int alternativesLength = alternatives.Count;
        int i = 0;
        var Aresponse = alternatives[i]["response"];
        do
        {
            
           Aresponse = alternatives[i]["response"];
            totalLength = (string)Aresponse["totalLength"];
            totalSeconds = (string)Aresponse["totalSeconds"];
            return new Itinerary(totalLength, totalSeconds);

        } while (i < alternativesLength && (bool)Aresponse["isFastest"]);

       
    }
 }
