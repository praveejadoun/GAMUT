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


        [ResponseType(typeof(FinancialResultType))]
        
        public IHttpActionResult GetFinancialResultType()
        {

            List<FinancialResultType> fianDataType = db.FinancialResultTypes.Where(c => c.IsFinancialData == true).OrderBy(c => c.TypeName).ToList();
            if (fianDataType == null)
            {
                return null;
            }

            return Ok(fianDataType);
        }

        [ResponseType(typeof(FinancialResultType))]
        public IHttpActionResult GetFiancialResultParentHeader(int resType)
        {

            List<FinancialResultHeader> financeHeader = db.FinancialResultHeaders.Where(i => i.TypeId == resType).Where(i=> i.parentID==null).OrderBy(i=>i.HeaderName).ToList();
            if (financeHeader == null)
            {
                return null;
            }

            return Ok(financeHeader);
        }


        [HttpGet]
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
        [HttpGet]
        public IHttpActionResult GetFinancialResultQuarterlyTrendz(string id,int resTypeId)
        {

            var financiaResult = (from frd in db.FinancialResultDetails
                                  join fh in db.FinancialResultHeaders on frd.HeaderID equals fh.HeaderID
                                  where frd.Cust_id == id && fh.TypeId == resTypeId 
                                  select new { CustID = frd.Cust_id, FinanceHeader = fh.HeaderName, QuarterInfo = frd.ResQuarter, QuarterDate = frd.UpdateDate, Amount = frd.Amount ,SortOrder=fh.SortOrder, parentId=fh.parentID}).ToList();


          /*  var quarterlyTrendz = (from f in financiaResult
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

            */
          
            // By Using GetAllSubject() Method we will Get the list of all subjects
           
            var quarter = (from f in financiaResult
                           orderby f.QuarterDate descending
                                select f.QuarterInfo ).Distinct().ToList().Take(5);


            var financialData = (from f in financiaResult
                     orderby f.QuarterDate descending, f.SortOrder  ascending
                     group f by new { f.CustID, f.FinanceHeader,f.parentId }
                            into myGroup
                     where myGroup.Count() > 0
                     
                     select new
                     {
                         myGroup.Key.CustID,
                         myGroup.Key.FinanceHeader,
                         myGroup.Key.parentId,
                         FR1= myGroup.Where(c => (quarter.Count() >= 1 && (c.QuarterInfo == quarter.ElementAt(0) || c.QuarterInfo == ""))).Select(c => c.Amount).FirstOrDefault(),
                         FR2 = myGroup.Where(c => (quarter.Count() >= 2 && (c.QuarterInfo == quarter.ElementAt(1) || c.QuarterInfo == ""))).Select(c => c.Amount).FirstOrDefault(),
                         FR3 = myGroup.Where(c => (quarter.Count() >= 3 && (c.QuarterInfo == quarter.ElementAt(2) || c.QuarterInfo == ""))).Select(c => c.Amount).FirstOrDefault(),
                         FR4 = myGroup.Where(c => (quarter.Count() >= 4 && (c.QuarterInfo == quarter.ElementAt(3) || c.QuarterInfo==""))).Select(c => c.Amount).FirstOrDefault(),
                         FR5 = myGroup.Where(c => (quarter.Count() >= 5 && (c.QuarterInfo == quarter.ElementAt(4) || c.QuarterInfo == ""))).Select(c => c.Amount).FirstOrDefault(),
                         /* Quarter = myGroup.GroupBy(f => f.QuarterInfo).Select
                          (m => new { m.Key, Score = m.Sum(c => c.Amount) })*/
                     }).ToList();


            return Ok(new { FinancialResult = financialData, resQuar = quarter });
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