using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Gamut.WebAPI.Models;

namespace Gamut.WebAPI.Controllers
{
    public class ReportsController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        
        // GET: api/ActivityLog/5
        [ResponseType(typeof(ActivityLogDecorator))]
        [Route("api/ReportParameter/{id}")]
        public IHttpActionResult GetReportParameter(string id)
        {

            List<string> relatedTo = db.ActivityLogs.Select(m => m.activityType).Distinct().ToList();// .Distinct .Where(i => i.LookUp_Table == "Report" && i.LookUp_Name == "RelatedTo").ToList();
            List<LookUp> status = db.LookUps.Where(i => i.LookUp_Table == "Report" && i.LookUp_Name == "Status").ToList();
            Customer customer = db.Customers.Find(id);
            if (customer == null) customer = new Customer();

            if (relatedTo == null || relatedTo.Count <=0)
            {
                return Ok(new ReportDecorator(new List<string>(), status,customer));
                //return NotFound();
            }
           
            
            ReportDecorator  reportDecorator = new ReportDecorator(relatedTo,  status, customer);
            return Ok(reportDecorator);
        }

        [Route("api/ReportData/{id}")]
        public IHttpActionResult GetReportData(string id,string status,string relatedTo, DateTime fromDate,DateTime toDate)
        {

            return NotFound();// Ok(reportDecorator);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ActivityLogExists(int id)
        {
            return db.ActivityLogs.Count(e => e.Id == id) > 0;
        }
    }

    public class ReportDecorator
    {
        public ReportDecorator(List<string> _relatedTo, List<LookUp> _status,Customer _customer)
        {
            relatedTo = _relatedTo;
            status = _status;
        }
        public List<string> relatedTo { get; set; }
        public List<LookUp> status { get; set; }
        public Customer customer
        {
            get; set;
        }
    }
}