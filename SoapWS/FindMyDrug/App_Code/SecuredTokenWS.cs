﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SecuredTokenWS
/// </summary>
public class SecuredTokenWS : System.Web.Services.Protocols.SoapHeader
{
    public string Username { get; set; }
    public string Password { get; set; }
    public string AuthenticationToken { get; set; }

    string ws_username = System.Configuration.ConfigurationManager.AppSettings["Username"].ToString();
    string ws_password = System.Configuration.ConfigurationManager.AppSettings["Password"].ToString();
    public bool IsUserCredentialsValid(string Username, string Paswsword)
    {
        //check credential from my appsettings here
        // if ok return true else return false
        if (Username == ws_username && Password == ws_password)
            return true;
        else
            return false;
    }

    public bool IsUserCredentialsValid(SecuredTokenWS SoapHeader)
    {
        if (SoapHeader == null) 
            return false;

        // check the token exists in Cache
        if (!string.IsNullOrEmpty(SoapHeader.AuthenticationToken))
            return (HttpRuntime.Cache[SoapHeader.AuthenticationToken] != null);

        return false;
    }
}