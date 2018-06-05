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

namespace Gamut.WebApp.Controllers
{
    public class Soc124APIController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/Soc124API
        public IQueryable<SOC124> GetSOC124()
        {
            return db.SOC124;
        }

        // GET: api/Soc124API/5
        [ResponseType(typeof(SOC124Decorator))]
        public IHttpActionResult GetSOC124(int id)
        {
            SOC124 sOC124 = db.SOC124.Find(id);
            if (sOC124 == null)
            {
                return NotFound();
            }

            Customer customer = db.Customers.Find(sOC124.Cust_id);
            List<LookUp> via = db.LookUps.Where(i => i.LookUp_Table == "SOC124" && i.LookUp_Name == "Via").ToList();
            SOC124Decorator soc124Decorator = new SOC124Decorator(sOC124, via, customer);

            return Ok(soc124Decorator);
                        
        }

        // PUT: api/Soc124API/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutSOC124(int id, SOC124 sOC124)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != sOC124.Id)
            {
                return BadRequest();
            }

            db.Entry(sOC124).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SOC124Exists(id))
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

        // POST: api/Soc124API
        [ResponseType(typeof(SOC124))]
        public IHttpActionResult PostSOC124(SOC124 sOC124)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.SOC124.Add(sOC124);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = sOC124.Id }, sOC124);
        }

        // DELETE: api/Soc124API/5
        [ResponseType(typeof(SOC124))]
        public IHttpActionResult DeleteSOC124(int id)
        {
            SOC124 sOC124 = db.SOC124.Find(id);
            if (sOC124 == null)
            {
                return NotFound();
            }

            db.SOC124.Remove(sOC124);
            db.SaveChanges();

            return Ok(sOC124);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool SOC124Exists(int id)
        {
            return db.SOC124.Count(e => e.Id == id) > 0;
        }
    }

    public class SOC124Decorator
    {
        public SOC124Decorator(SOC124 _data, List<LookUp> _lookupVia, Customer _customer)
        {
            entData = _data;
            lookupVia = _lookupVia;
            customer = _customer;    
        }

        public SOC124 entData { get; set; }
        public Customer customer { get; set; }
        public List<LookUp> lookupVia { get; set; }
        
    }
}