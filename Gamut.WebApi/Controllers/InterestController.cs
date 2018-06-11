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
    public class InterestController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/Interest
        public IQueryable<Interest> GetInterests()
        {
            return db.Interests;
        }

        //// GET: api/Interest/5
        //[ResponseType(typeof(Interest))]
        //public IHttpActionResult GetInterest(int id)
        //{
        //    Interest interest = db.Interests.Find(id);
        //    if (interest == null)
        //    {
        //        return NotFound();
        //    }



        //    return Ok(interest);
        //}

        [ResponseType(typeof(Rating))]
        [Route("api/InterestCust/{id}")]
        public IHttpActionResult GetInterestBy(string id)
        {
            
            List<Interest> interest = db.Interests.Where(i => i.Cust_Id == id).ToList();
            if (interest == null)
            {
                return null;
            }
            Customer customer = db.Customers.Find(interest[0].Cust_Id);
            InterestDecorator interestDecorator = new InterestDecorator(interest, customer);
            return Ok(interestDecorator);
        }
        // PUT: api/Interest/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutInterest(int id, Interest interest)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != interest.Id)
            {
                return BadRequest();
            }

            db.Entry(interest).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!InterestExists(id))
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

        // POST: api/Interest
        [ResponseType(typeof(Interest))]
        public IHttpActionResult PostInterest(Interest interest)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Interests.Add(interest);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = interest.Id }, interest);
        }

        // DELETE: api/Interest/5
        [ResponseType(typeof(Interest))]
        public IHttpActionResult DeleteInterest(int id)
        {
            Interest interest = db.Interests.Find(id);
            if (interest == null)
            {
                return NotFound();
            }

            db.Interests.Remove(interest);
            db.SaveChanges();

            return Ok(interest);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool InterestExists(int id)
        {
            return db.Interests.Count(e => e.Id == id) > 0;
        }
    }
    public class InterestDecorator
    {
        public InterestDecorator(List<Interest> _data,  Customer _customer )
        {
            entData = _data;
            
        }
        public List<Interest> entData { get; set; }
        public Customer customer { get; set; }
    }
}