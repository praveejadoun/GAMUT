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
    public class RatingAPIController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/RatingAPI
        public IQueryable<Rating> GetRatings()
        {
            return db.Ratings;
        }

        //// GET: api/RatingAPI/5
        //[ResponseType(typeof(Rating))]
        //public IHttpActionResult GetRating(int id)
        //{
        //    Rating rating = db.Ratings.Find(id);
        //    if (rating == null)
        //    {
        //        return NotFound();
        //    }
        //    Customer customer = db.Customers.Find(rating.Cust_Id);
        //    RatingDecorator ratingDecorator = new RatingDecorator(rating, customer);
        //    return Ok(ratingDecorator);

        //    return Ok(rating);
        //}

      
        [ResponseType(typeof(Rating))]
        [Route("api/RatingAPICust/{id}")]
        public IHttpActionResult GetRatingBy(string id)
        {
            //Rating rating = db.Ratings.Where(i => i.Cust_Id == id).FirstOrDefault();
            //if (rating == null)
            //{
            //    return NotFound();
            //}

            ////return Ok(rating);
            

            List<Rating> rating = db.Ratings.Where(i => i.Cust_Id == id).ToList();
            if (rating == null)
            {
                return null;
            }
            Customer customer = db.Customers.Find(rating[0].Cust_Id);
            RatingDecorator ratingDecorator = new RatingDecorator(rating, customer);
            return  Ok(ratingDecorator);
        }

        // PUT: api/RatingAPI/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutRating(int id, Rating rating)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != rating.Id)
            {
                return BadRequest();
            }

            db.Entry(rating).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RatingExists(id))
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

        // POST: api/RatingAPI
        [ResponseType(typeof(Rating))]
        public IHttpActionResult PostRating(Rating rating)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Ratings.Add(rating);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = rating.Id }, rating);
        }

        // DELETE: api/RatingAPI/5
        [ResponseType(typeof(Rating))]
        public IHttpActionResult DeleteRating(int id)
        {
            Rating rating = db.Ratings.Find(id);
            if (rating == null)
            {
                return NotFound();
            }

            db.Ratings.Remove(rating);
            db.SaveChanges();

            return Ok(rating);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool RatingExists(int id)
        {
            return db.Ratings.Count(e => e.Id == id) > 0;
        }
    }

    public class RatingDecorator
    {
        public RatingDecorator(List<Rating> _data, Customer _customer)
        {
            entData = _data;
            customer = _customer;
        }
        public List<Rating> entData { get; set; }
        public Customer customer { get; set; }
    }
}