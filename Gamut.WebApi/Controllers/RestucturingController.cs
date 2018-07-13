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
    public class RestucturingController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/RestucturingHeaders
        public IQueryable<RestucturingHeader> GetRestucturingHeaders()
        {
            return db.RestucturingHeaders;
        }

        // GET: api/Restucturing/5
        [ResponseType(typeof(RestucturingDecorator))]
        public IHttpActionResult GetRestucturingHeader(string id)
        {
            RestucturingHeader restucturingHeader = db.RestucturingHeaders.Where(i=>i.Cust_Id==id).FirstOrDefault();
            if (restucturingHeader == null)
            {
                return NotFound();
            }

            Customer customer = db.Customers.Find(restucturingHeader.Cust_Id);
            List<RestucturingDetail> restucturingDetail = db.RestucturingDetails.Where(i=>i.Cust_id==restucturingHeader.Cust_Id).ToList();
            RestucturingDecorator restucturingDecorator = new RestucturingDecorator(restucturingDetail, customer,restucturingHeader);
           
            return Ok(restucturingDecorator);
        }

        // PUT: api/Restucturing/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutRestucturingHeader(int id, RestucturingHeader restucturingHeader)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != restucturingHeader.Id)
            {
                return BadRequest();
            }

            db.Entry(restucturingHeader).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RestucturingHeaderExists(id))
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

        // POST: api/Restucturing
        //[ResponseType(typeof(RestucturingHeader))]
        //public IHttpActionResult PostRestucturingHeader(RestucturingHeader restucturingHeader)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return BadRequest(ModelState);
        //    }

        //    db.RestucturingHeaders.Add(restucturingHeader);
        //    db.SaveChanges();

        //    return CreatedAtRoute("DefaultApi", new { id = restucturingHeader.Id }, restucturingHeader);
        //}

        //// DELETE: api/Restucturing/5
        //[ResponseType(typeof(RestucturingHeader))]
        //public IHttpActionResult DeleteRestucturingHeader(int id)
        //{
        //    RestucturingHeader restucturingHeader = db.RestucturingHeaders.Find(id);
        //    if (restucturingHeader == null)
        //    {
        //        return NotFound();
        //    }

        //    db.RestucturingHeaders.Remove(restucturingHeader);
        //    db.SaveChanges();

        //    return Ok(restucturingHeader);
        //}

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool RestucturingHeaderExists(int id)
        {
            return db.RestucturingHeaders.Count(e => e.Id == id) > 0;
        }
    }

    public class RestucturingDecorator
    {
        public RestucturingDecorator(List<RestucturingDetail> _detaildata, Customer _customer,RestucturingHeader _data)
        {
            entData = _data;
            customer = _customer;
            detailData = _detaildata;
        }
        public RestucturingHeader entData { get; set; }
        public List<RestucturingDetail> detailData { get; set; }
        public Customer customer { get; set; }
    }
}