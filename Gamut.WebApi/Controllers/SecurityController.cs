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
    public class SecurityController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/Security
        public IQueryable<Security> GetSecurities()
        {
            return db.Securities;
        }

        // GET: api/Security/5
        //[ResponseType(typeof(Security))]
        //public IHttpActionResult GetSecurity(int id)
        //{
        //    Security security = db.Securities.Find(id);
        //    if (security == null)
        //    {
        //        return NotFound();
        //    }

        //    return Ok(security);
        //}

        [ResponseType(typeof(Security))]
        [Route("api/SecurityCust/{id}")]
        public IHttpActionResult GetInterestBy(string id)
        {

            List<Security> securities = db.Securities.Where(i => i.Cust_Id == id).ToList();
            List<Customer> guranters = new List<Customer>();
            if (securities == null || securities.Count <= 0)
            {
                return NotFound();
            }
            else
            {
                foreach (Security sec in securities)
                {
                    if (sec.guarantorId != null && sec.guarantorId != string.Empty)
                    {
                        
                        Customer cust = db.Customers.Where(i => i.Cust_id == sec.guarantorId).FirstOrDefault();
                        if (!guranters.Exists(c=>c.Cust_id == cust.Cust_id))
                        {
                            guranters.Add(cust);
                        }
                    }
                    
                }
            }

            Customer customer = db.Customers.Find(id);
            SecurityDecorator interestDecorator = new SecurityDecorator(securities, customer,guranters);
            return Ok(interestDecorator);
        }

        // PUT: api/Security/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutSecurity(int id, Security security)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != security.Id)
            {
                return BadRequest();
            }

            db.Entry(security).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SecurityExists(id))
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

        // POST: api/Security
        [ResponseType(typeof(Security))]
        public IHttpActionResult PostSecurity(Security security)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Securities.Add(security);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = security.Id }, security);
        }

        // DELETE: api/Security/5
        [ResponseType(typeof(Security))]
        public IHttpActionResult DeleteSecurity(int id)
        {
            Security security = db.Securities.Find(id);
            if (security == null)
            {
                return NotFound();
            }

            db.Securities.Remove(security);
            db.SaveChanges();

            return Ok(security);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool SecurityExists(int id)
        {
            return db.Securities.Count(e => e.Id == id) > 0;
        }
    }

    public class SecurityDecorator
    {
        public SecurityDecorator(List<Security> _data, Customer _customer,List<Customer> _guranters)
        {
            entData = _data;
            customer = _customer;
            gurantors = _guranters;
        }
        public List<Security> entData { get; set; }
        public List<Customer> gurantors { get; set; }
        public Customer customer { get; set; }
    }
}