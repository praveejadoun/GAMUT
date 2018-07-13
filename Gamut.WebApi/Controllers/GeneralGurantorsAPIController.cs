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
    public class GeneralGurantorsAPIController: ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/GeneralGurantorsAPI
        public IQueryable<GeneralGurantor> GetGeneralGurantors()
        {
            return db.GeneralGurantors;
        }

        // GET: api/GeneralGurantorsAPI/5
        [ResponseType(typeof(GeneralGurantor))]
        public IHttpActionResult GetGeneralGurantor(int id)
        {
            GeneralGurantor generalGurantor = db.GeneralGurantors.Find(id);
            if (generalGurantor == null)
            {
                return NotFound();
            }

            return Ok(generalGurantor);
        }

        // PUT: api/GeneralGurantorsAPI/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutGeneralGurantor(int id, GeneralGurantor generalGurantor)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != generalGurantor.id)
            {
                return BadRequest();
            }

            db.Entry(generalGurantor).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GeneralGurantorExists(id))
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

        // POST: api/GeneralGurantorsAPI
        [ResponseType(typeof(GeneralGurantor))]
        public IHttpActionResult PostGeneralGurantor(GeneralGurantor generalGurantor)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.GeneralGurantors.Add(generalGurantor);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = generalGurantor.id }, generalGurantor);
        }

        // DELETE: api/GeneralGurantorsAPI/5
        [ResponseType(typeof(GeneralGurantor))]
        public IHttpActionResult DeleteGeneralGurantor(int id)
        {
            GeneralGurantor generalGurantor = db.GeneralGurantors.Find(id);
            if (generalGurantor == null)
            {
                return NotFound();
            }

            db.GeneralGurantors.Remove(generalGurantor);
            db.SaveChanges();

            return Ok(generalGurantor);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool GeneralGurantorExists(int id)
        {
            return db.GeneralGurantors.Count(e => e.id == id) > 0;
        }
    }

    public class GeneralGurantorDecorator
    {
        public GeneralGurantorDecorator(GeneralGurantor _data, string _custName)
        {
            entData = _data;
            custName = _custName;
        }

        public GeneralGurantor entData { get; set; }
        public string custName { get; set; }
        
    }
}