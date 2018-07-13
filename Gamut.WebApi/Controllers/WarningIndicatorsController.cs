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
    public class WarningIndicatorsController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/WarningIndicators
        public IQueryable<WarningIndicator> GetWarningIndicators()
        {
            return db.WarningIndicators;
        }

        // GET: api/WarningIndicators/5
        [ResponseType(typeof(WarningIndicatorDecorator))]
        public IHttpActionResult GetWarningIndicator(string id)
        {
            List<WarningIndicator> warningIndicator = db.WarningIndicators.Where(i => i.Cust_Id == id).ToList();
            if (warningIndicator == null || warningIndicator.Count() <= 0)
            {
                return NotFound();
            }

            Customer customer = db.Customers.Where(i => i.Cust_id == id).FirstOrDefault();
            WarningIndicatorDecorator warningIndicatorDecorator = new WarningIndicatorDecorator(warningIndicator, customer);

            return Ok(warningIndicatorDecorator);
        }

        // GET: api/Soc124API/5
        [ResponseType(typeof(SOC124Decorator))]
        [Route("api/WarningIndicatorsByDate/{id}/{fromDate}/{toDate}")]

        public IHttpActionResult GetWarningIndicatorsByDate(string id, string fromDate, string toDate)
        {
            // DateTime dtFrom = Convert.ToDateTime(fromDate,"DD-MMM-YYYY");
            DateTime dtFrom = Convert.ToDateTime(DateTime.ParseExact(fromDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));
            DateTime dtTo = Convert.ToDateTime(DateTime.ParseExact(toDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));

            List<WarningIndicator> warningIndicator = db.WarningIndicators.Where(i => i.Cust_Id == id && (i.observedOn >= dtFrom && i.observedOn <= dtTo)).ToList();
            if (warningIndicator == null || warningIndicator.Count() <= 0)
            {
                return NotFound();
            }

            Customer customer = db.Customers.Where(i => i.Cust_id == id).FirstOrDefault();
            WarningIndicatorDecorator warningIndicatorDecorator = new WarningIndicatorDecorator(warningIndicator, customer);

            return Ok(warningIndicatorDecorator);
        }

        // PUT: api/WarningIndicators/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutWarningIndicator(int id, WarningIndicator warningIndicator)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != warningIndicator.Id)
            {
                return BadRequest();
            }
            warningIndicator.lastUpdatedOn = System.DateTime.Now;
            warningIndicator.lastUpdatedBy = "system";
            db.Entry(warningIndicator).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!WarningIndicatorExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/WarningIndicators
        //[ResponseType(typeof(WarningIndicator))]
        //public IHttpActionResult PostWarningIndicator(WarningIndicator warningIndicator)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return BadRequest(ModelState);
        //    }

        //    db.WarningIndicators.Add(warningIndicator);
        //    db.SaveChanges();

        //    return CreatedAtRoute("DefaultApi", new { id = warningIndicator.Id }, warningIndicator);
        //}

        //// DELETE: api/WarningIndicators/5
        //[ResponseType(typeof(WarningIndicator))]
        //public IHttpActionResult DeleteWarningIndicator(int id)
        //{
        //    WarningIndicator warningIndicator = db.WarningIndicators.Find(id);
        //    if (warningIndicator == null)
        //    {
        //        return NotFound();
        //    }

        //    db.WarningIndicators.Remove(warningIndicator);
        //    db.SaveChanges();

        //    return Ok(warningIndicator);
        //}

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool WarningIndicatorExists(int id)
        {
            return db.WarningIndicators.Count(e => e.Id == id) > 0;
        }
    }
    public class WarningIndicatorDecorator
    {
        public WarningIndicatorDecorator(List<WarningIndicator> _detaildata, Customer _customer)
        {
            customer = _customer;
            detailData = _detaildata;
        }

        public List<WarningIndicator> detailData { get; set; }
        public Customer customer { get; set; }
    }
}