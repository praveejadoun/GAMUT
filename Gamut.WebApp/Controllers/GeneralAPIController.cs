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
    public class GeneralAPIController : ApiController
    {
        //private SchoolManagementEntities db = new SchoolManagementEntities();

        // GET: api/ManageDataAPI
        private gamutdatabaseEntities db = new gamutdatabaseEntities();
        public IQueryable<General> GetGeneral()
        {
            return db.Generals;
        }

        // GET: api/ManageDataAPI/5
        [ResponseType(typeof(General))]
        public IHttpActionResult GetGeneral(string CustId)
        {
            General General = db.Generals.Find(CustId);
            if (General == null)
            {
                return NotFound();
            }

            return Ok(General);
        }

        // PUT: api/ManageDataAPI/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutGeneral(string CustId, General general)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (CustId != general.Cust_id)
            {
                return BadRequest();
            }

            db.Entry(general).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CustomerExists(CustId))
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

        // POST: api/ManageDataAPI
        [ResponseType(typeof(General))]
        public IHttpActionResult PostGeneral(General general)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Generals.Add(general);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = general.Cust_id }, general);
        }

        // DELETE: api/ManageDataAPI/5
        [ResponseType(typeof(General))]
        public IHttpActionResult DeleteGeneral(string CustId)
        {
            General general = db.Generals.Find(CustId);
            if (general == null)
            {
                return NotFound();
            }

            db.Generals.Remove(general);
            db.SaveChanges();

            return Ok(general);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool CustomerExists(string id)
        {
            return db.Generals.Count(e => e.Cust_id== id) > 0;
        }
    }
}
