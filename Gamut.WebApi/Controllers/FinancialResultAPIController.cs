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
        public IHttpActionResult GetFinancialResultByQuarter(string id)
        {
            
            var financiaResult = (from frd in db.FinancialResultDetails
                                                          join fh in db.FinancialResultHeaders on frd.HeaderID equals fh.HeaderID
                                                          where frd.Cust_id == id && frd.Trends=="Quarterly"
                                                          select new { CustID = frd.Cust_id, FinanceHeader = fh.HeaderName, QuarterInfo = frd.ResQuarter, QuarterDate = frd.UpdateDate, Amount = frd.Amount }).ToList();
            if (financiaResult == null)
            {
                return null;
            }
            

            return Ok(financiaResult);
        }
        
        public IHttpActionResult GetFinancialResultQuarterlyTrendz(string id,string trendz)
        {

            var financiaResult = (from frd in db.FinancialResultDetails
                                  join fh in db.FinancialResultHeaders on frd.HeaderID equals fh.HeaderID
                                  where frd.Cust_id == id && frd.Trends == "Quarterly" && DbFunctions.DiffDays(frd.UpdateDate, DateTime.Now) < 455
                                  select new { CustID = frd.Cust_id, FinanceHeader = fh.HeaderName, QuarterInfo = frd.ResQuarter, QuarterDate = frd.UpdateDate, Amount = frd.Amount }).ToList();


            var quarterlyTrendz = (from f in financiaResult
                                   orderby f.QuarterDate descending
                                   group f by new { f.CustID, f.FinanceHeader }
              into myGroup
                                   where myGroup.Count() > 0
                                   select new
                                   {

                                       CustId = myGroup.Key.CustID,
                                       Header = myGroup.Key.FinanceHeader,
                                       Quarter = myGroup.Select(f => f.QuarterInfo),
                                       Amount = myGroup.Select(v => v.Amount)
                                   }).ToList();




            return Ok(quarterlyTrendz);
        }


    



        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}