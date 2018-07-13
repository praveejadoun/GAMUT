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
    public class MiscController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/Misc
        /*public IQueryable<MiscExposure> GetMiscExposures()
        {
            return db.MiscExposures;
        }*/

        // GET: api/Misc/5
        [ResponseType(typeof(MiscDecorator))]
        // GET: api/Misc/5
        [Route("api/Misc/{custId}")]
        public IHttpActionResult GetMiscExposure(string custId,string loginId)
        {
            List<MiscExposure> miscExposures = db.MiscExposures.Where(i => i.Cust_Id == custId && i.LastUpdatedBy == loginId).ToList();
            List<MiscAttachment> miscAttachments = db.MiscAttachments.Where(i => i.Cust_Id == custId && i.LastUpdatedBy == loginId).ToList();

            if (miscExposures == null)
            {
                miscExposures = new List<MiscExposure>();
            }
            if (miscAttachments == null)
            {
                miscAttachments = new List<MiscAttachment>();
            }

            Customer customer = db.Customers.Where(i => i.Cust_id == custId).FirstOrDefault();
            List<LookUp> facilityTypes = db.LookUps.Where(id => id.LookUp_Table == "MISC" && id.LookUp_Name == "FacilityType").ToList();
            List<LookUp> facilities = db.LookUps.Where(id => id.LookUp_Table == "MISC" && id.LookUp_Name == "Facility").ToList();

            MiscDecorator miscDecorator = new MiscDecorator(miscExposures, miscAttachments, facilityTypes, facilities, customer);

            return Ok(miscDecorator);
        }

        // PUT: api/Misc/5
        [ResponseType(typeof(void))]
        [Route("api/SaveMiscExposure/{id}")]
        public IHttpActionResult PutMiscExposure(int id, MiscExposure miscExposure)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != miscExposure.Id)
            {
                return BadRequest();
            }

            db.Entry(miscExposure).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MiscExposureExists(id))
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

        [Route("api/SaveMiscAttachment/{id}")]
        public IHttpActionResult PutMiscExposure(int id, MiscAttachment miscAttachment)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != miscAttachment.Id)
            {
                return BadRequest();
            }

            db.Entry(miscAttachment).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MiscExposureExists(id))
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
        
        //// POST: api/Misc
        //[ResponseType(typeof(MiscExposure))]
        //public IHttpActionResult PostMiscExposure(MiscExposure miscExposure)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return BadRequest(ModelState);
        //    }

        //    db.MiscExposures.Add(miscExposure);

        //    try
        //    {
        //        db.SaveChanges();
        //    }
        //    catch (DbUpdateException)
        //    {
        //        if (MiscExposureExists(miscExposure.Id))
        //        {
        //            return Conflict();
        //        }
        //        else
        //        {
        //            throw;
        //        }
        //    }

        //    return CreatedAtRoute("DefaultApi", new { id = miscExposure.Id }, miscExposure);
        //}

        //// DELETE: api/Misc/5
        //[ResponseType(typeof(MiscExposure))]
        //public IHttpActionResult DeleteMiscExposure(int id)
        //{
        //    MiscExposure miscExposure = db.MiscExposures.Find(id);
        //    if (miscExposure == null)
        //    {
        //        return NotFound();
        //    }

        //    db.MiscExposures.Remove(miscExposure);
        //    db.SaveChanges();

        //    return Ok(miscExposure);
        //}

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool MiscExposureExists(int id)
        {
            return db.MiscExposures.Count(e => e.Id == id) > 0;
        }
    }

    public class MiscDecorator
    {
        public MiscDecorator(List<MiscExposure> _miscExposures, List<MiscAttachment> _miscAttachments, List<LookUp> _facilityTypes, List<LookUp> _facilities, Customer _customer)
        {
            miscExposures = _miscExposures;
            miscAttachments = _miscAttachments;
            facilityTypes= _facilityTypes;
            facilities = _facilities;
            customer=_customer;
        }
        public List<MiscExposure> miscExposures;
        public List<MiscAttachment> miscAttachments;
        public List<LookUp> facilityTypes;
        public List<LookUp> facilities;
        public Customer customer;    
    }
}