using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text.Json.Nodes;
using System.Web.Http;
using GetListPharmaciesByRegion.Models;
using Newtonsoft.Json.Linq;

namespace GetListPharmaciesByRegion.Controllers
{
    public class PharmacyController : ApiController
    {
        [Route("api/PharmacyController/{region}")]
        [HttpGet, HttpPost]
        public HttpResponseMessage ListAllPharmaciesByRegion(string region)
        {
            List<Pharmacy> PharmacyList = new List<Pharmacy>();
            using (GetMyDrugEntities dc = new GetMyDrugEntities())
            {
                if(region == "All") PharmacyList = dc.Pharmacies.OrderBy(a => a.Name).ToList();
                else if (region != "") PharmacyList = dc.Pharmacies.Where(a => a.Gouvernorat == region).OrderBy(a => a.Name).ToList() as List<Pharmacy>;
               
                HttpResponseMessage response;
                response = Request.CreateResponse(HttpStatusCode.OK, PharmacyList);
                return response;
            }
        }

    }
}
