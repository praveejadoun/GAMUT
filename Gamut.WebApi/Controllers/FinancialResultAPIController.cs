using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Gamut.WebAPI.Models;

namespace Gamut.WebAPI.Controllers
{
    public class FinancialResultAPIController : ApiController
    {
        
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        [ResponseType(typeof(FinancialResultDetail))]
        public IHttpActionResult GetFinancialResultTrends(string id)
        {
          


            List<FinancialResultDetail> financiaResult = db.FinancialResultDetails.Where(i => i.Cust_id == id).ToList();
            if (financiaResult == null)
            {
                return null;
            }
           
            return Ok(financiaResult);
        }

    }
}