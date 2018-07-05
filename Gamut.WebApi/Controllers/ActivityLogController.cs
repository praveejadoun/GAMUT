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
    public class ActivityLogController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/ActivityLog
        //public IQueryable<ActivityLog> GetActivityLogs()
        //{
        //    return db.ActivityLogs;
        //}

        // GET: api/ActivityLog/5
        [ResponseType(typeof(ActivityLogDecorator))]
        public IHttpActionResult GetActivityLog(string id, string logType, string fromDate, string toDate)
        {

            DateTime dtFrom = Convert.ToDateTime(DateTime.ParseExact(fromDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));
            DateTime dtTo = Convert.ToDateTime(DateTime.ParseExact(toDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));

            List<ActivityLog> activityLogs = db.ActivityLogs.Where(i => i.Cust_Id == id && i.logType == logType && (i.compiledDate >= dtFrom && i.compiledDate <= dtTo)).ToList();
            List<LookUp> logTypes = db.LookUps.Where(i => i.LookUp_Table == "ActivityLog" && i.LookUp_Name == "LogTypes").ToList();
            Customer customer = db.Customers.Find(id);
            if (customer == null) customer = new Customer();

            if (activityLogs == null  || activityLogs.Count() <= 0)
            {
                return Ok(new ActivityLogDecorator(new List<ActivityLog>(), customer, logTypes));
           
            }
            
            ActivityLogDecorator activityLogDecorator = new ActivityLogDecorator(activityLogs, customer, logTypes);
            return Ok(activityLogDecorator);
        }

        // PUT: api/ActivityLog/5
        //[ResponseType(typeof(void))]
        //public IHttpActionResult PutActivityLog(int id, ActivityLog activityLog)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return BadRequest(ModelState);
        //    }

        //    if (id != activityLog.Id)
        //    {
        //        return BadRequest();
        //    }

        //    db.Entry(activityLog).State = EntityState.Modified;

        //    try
        //    {
        //        db.SaveChanges();
        //    }
        //    catch (DbUpdateConcurrencyException)
        //    {
        //        if (!ActivityLogExists(id))
        //        {
        //            return NotFound();
        //        }
        //        else
        //        {
        //            throw;
        //        }
        //    }

        //    return StatusCode(HttpStatusCode.NoContent);
        //}

        // POST: api/ActivityLog
        //[ResponseType(typeof(ActivityLog))]
        //public IHttpActionResult PostActivityLog(ActivityLog activityLog)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return BadRequest(ModelState);
        //    }

        //    db.ActivityLogs.Add(activityLog);
        //    db.SaveChanges();

        //    return CreatedAtRoute("DefaultApi", new { id = activityLog.Id }, activityLog);
        //}

        // DELETE: api/ActivityLog/5
        //[ResponseType(typeof(ActivityLog))]
        //public IHttpActionResult DeleteActivityLog(int id)
        //{
        //    ActivityLog activityLog = db.ActivityLogs.Find(id);
        //    if (activityLog == null)
        //    {
        //        return NotFound();
        //    }

        //    db.ActivityLogs.Remove(activityLog);
        //    db.SaveChanges();

        //    return Ok(activityLog);
        //}

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

    public class ActivityLogDecorator
    {
        public ActivityLogDecorator(List<ActivityLog> _data, Customer _customer,List<LookUp> _logType)
        {
            entData = _data;
            customer = _customer;
            logType = _logType;
        }
        public List<ActivityLog> entData { get; set; }
        public List<LookUp> logType;
        public Customer customer
        {
            get; set;
        }
    }
}