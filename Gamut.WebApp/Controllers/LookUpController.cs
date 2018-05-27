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
using Gamut.WebApp.Models;

namespace Gamut.WebApp.Controllers
{
    public class LookUpController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/LookUp
        public IQueryable<LookUp> GetLookUps()
        {
            return db.LookUps;
        }

        // GET: api/LookUp/5
        [ResponseType(typeof(LookUp))]
        public IHttpActionResult GetLookUp(int id)
        {
            LookUp lookUp = db.LookUps.Find(id);
            if (lookUp == null)
            {
                return NotFound();
            }

            return Ok(lookUp);
        }

        // PUT: api/LookUp/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutLookUp(int id, LookUp lookUp)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != lookUp.Id)
            {
                return BadRequest();
            }

            db.Entry(lookUp).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LookUpExists(id))
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

        // POST: api/LookUp
        [ResponseType(typeof(LookUp))]
        public IHttpActionResult PostLookUp(LookUp lookUp)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.LookUps.Add(lookUp);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = lookUp.Id }, lookUp);
        }

        // DELETE: api/LookUp/5
        [ResponseType(typeof(LookUp))]
        public IHttpActionResult DeleteLookUp(int id)
        {
            LookUp lookUp = db.LookUps.Find(id);
            if (lookUp == null)
            {
                return NotFound();
            }

            db.LookUps.Remove(lookUp);
            db.SaveChanges();

            return Ok(lookUp);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool LookUpExists(int id)
        {
            return db.LookUps.Count(e => e.Id == id) > 0;
        }
    }
}