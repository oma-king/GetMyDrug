using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pharmacy
/// </summary>
public class Itinerary
{
    private string _totalLength = string.Empty;

    public string totalLength
    {
        set { this._totalLength = value; }
        get { return this._totalLength; }
    }

    private string _totalSeconds = string.Empty;

    public string totalSeconds
    {
        set { this._totalSeconds = value; }
        get { return this._totalSeconds; }
    }
    public Itinerary() { }
    public Itinerary(string totalLength, string totalSeconds) { 
        this._totalLength = totalLength;
        this._totalSeconds = totalSeconds;
    }
}
