using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

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
        string token = Guid.NewGuid().ToString();
        HttpRuntime.Cache.Add(
            token,
            SoapHeader.Username,
            null,
            System.Web.Caching.Cache.NoAbsoluteExpiration,
            TimeSpan.FromMinutes(30),
            System.Web.Caching.CacheItemPriority.NotRemovable,
            null
            );
        return TokenCipher.Encrypt(token, "wdGL6HSa0Vn8A9sa6KyyR728WgQzpc2t");

    }

    [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
    public string Operation(string token)
    {
        if (SoapHeader == null)
            return "403.0 Forbidden - Unauthenticated !!!";
        if (string.IsNullOrEmpty(SoapHeader.Username) || string.IsNullOrEmpty(SoapHeader.Password))
            return "403.1 Forbidden - Unauthenticated !!!";

        // check if credential are valid
        if (!SoapHeader.IsUserCredentialsValid(SoapHeader.Username, SoapHeader.Password))
            return "403.2 Forbidden - Unauthenticated !!!";

        return TokenCipher.Decrypt(token, "wdGL6HSa0Vn8A9sa6KyyR728WgQzpc2t");
    }

        [WebMethod]
    [System.Web.Services.Protocols.SoapHeader("SoapHeader")]
    public string HelloWorld(string User, string Pass)
    { 

        if (SoapHeader == null)
            return "403 forbidden - Unauthenticated";

        if(!SoapHeader.IsUserCredentialsValid(SoapHeader))
            return "403 forbidden - Unauthenticated !!!";

        return "Hello " + HttpRuntime.Cache[SoapHeader.AuthenticationToken];
    }

}
