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
    public class SMACompilationController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/SMACompilation
        //public IQueryable<SMACompilation> GetSMACompilations()
        //{
        //    return db.SMACompilations;
        //}

        // GET: api/SMACompilation/5
        [ResponseType(typeof(SMACompilationDecorator))]
        public IHttpActionResult GetSMACompilation(string id, string fromDate, string toDate)
        {

            DateTime dtFrom = Convert.ToDateTime(DateTime.ParseExact(fromDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));
            DateTime dtTo = Convert.ToDateTime(DateTime.ParseExact(toDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));

            List<SMAHistory> sMAHistories = db.SMAHistories.Where(i => i.Cust_Id == id && (i.CompiledDate >= dtFrom && i.CompiledDate <= dtTo)).ToList();
            if (sMAHistories == null || sMAHistories.Count() <= 0)
            {
                return NotFound();
            }
            Customer customer = db.Customers.Find(sMAHistories[0].Cust_Id);
            SMACompilation sMACompilation = new SMACompilation();
            List<SMABucket> sMABuckets = new List<SMABucket>();

            try
            {
                sMACompilation = db.SMACompilations.Where(i => i.Cust_id == id).FirstOrDefault();
                sMABuckets = db.SMABuckets.Where(i => i.Cust_Id == id).ToList();
            }
            catch { }

            SMACompilationDecorator sMACompilationDecorator  = new SMACompilationDecorator( sMACompilation,sMAHistories, customer,sMABuckets);
                        
            return Ok(sMACompilationDecorator);
        }

        // PUT: api/SMACompilation/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutSMACompilation(int id, SMACompilation sMACompilation)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != sMACompilation.Id)
            {
                return BadRequest();
            }

            db.Entry(sMACompilation).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SMACompilationExists(id))
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

        //// POST: api/SMACompilation
        //[ResponseType(typeof(SMACompilation))]
        //public IHttpActionResult PostSMACompilation(SMACompilation sMACompilation)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return BadRequest(ModelState);
        //    }

        //    db.SMACompilations.Add(sMACompilation);
        //    db.SaveChanges();

        //    return CreatedAtRoute("DefaultApi", new { id = sMACompilation.Id }, sMACompilation);
        //}

        // DELETE: api/SMACompilation/5
       // [ResponseType(typeof(SMACompilation))]
        //public IHttpActionResult DeleteSMACompilation(int id)
        //{
        //    SMACompilation sMACompilation = db.SMACompilations.Find(id);
        //    if (sMACompilation == null)
        //    {
        //        return NotFound();
        //    }

        //    db.SMACompilations.Remove(sMACompilation);
        //    db.SaveChanges();

        //    return Ok(sMACompilation);
        //}

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool SMACompilationExists(int id)
        {
            return db.SMACompilations.Count(e => e.Id == id) > 0;
        }
    }

    public class SMACompilationDecorator
    {
        public SMACompilationDecorator(SMACompilation _data, List<SMAHistory>  _sMAHistories, Customer _customer, List<SMABucket> _sMABuckets)
        {
            entData = _data;
            customer = _customer;
            sMAHistories = _sMAHistories;
            sMABuckets = _sMABuckets;
        }
        public SMACompilation entData { get; set; }
        public List<SMAHistory> sMAHistories { get; set; }
        public List<SMABucket> sMABuckets { get; set; }

        public Customer customer { get; set; }
    }
}