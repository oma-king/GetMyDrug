using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using Dapper;

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

    public List<Pharmacy> CalculateItineraryToPharmacy(string DrugName, string Region)
    {
        List<Pharmacy> results;
        if (DrugName == null || DrugName == "" || Region == null || Region == "")
            return results = null;

        if (SoapHeader == null)
            return results = null;
        if (!SoapHeader.IsUserCredentialsValid(SoapHeader))
            return results = null;

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

}
