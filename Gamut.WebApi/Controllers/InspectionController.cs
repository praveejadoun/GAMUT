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
    public class InspectionController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        //// GET: api/Inspection
        //public IQueryable<Inspection> GetInspections()
        //{
        //    return db.Inspections;
        //}

        // GET: api/Inspection/5
        [ResponseType(typeof(InspectionDecorator))]
        public IHttpActionResult GetInspection(string id, string fromDate, string toDate)
        {

            DateTime dtFrom = Convert.ToDateTime(DateTime.ParseExact(fromDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));
            DateTime dtTo = Convert.ToDateTime(DateTime.ParseExact(toDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));

            List<Inspection> inspections = db.Inspections.Where(i => i.Cust_Id == id && (i.CompiledDate >= dtFrom && i.CompiledDate <= dtTo)).ToList();
            if (inspections == null || inspections.Count() <= 0)
            {
                return NotFound();
            }

            Customer customer = db.Customers.Find(inspections[0].Cust_Id);
            List<LookUp> inspectionStatus = db.LookUps.Where(i => i.LookUp_Table == "INSPECTION" && i.LookUp_Name == "INSPECTIONSTATUS").ToList();

            List<FinYear> finYears = new List<FinYear>();
            finYears.Add(new FinYear(DateTime.Now));
            finYears.Add(new FinYear(DateTime.Now.AddYears(-1)));
            finYears.Add(new FinYear(DateTime.Now.AddYears(-2)));
            finYears.Add(new FinYear(DateTime.Now.AddYears(-3)));

            InspectionDecorator inspectionDecorator  = new InspectionDecorator(inspections, customer, finYears, inspectionStatus);

            return Ok(inspectionDecorator);
        }

        // PUT: api/Inspection/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutInspection(int id, Inspection inspection)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != inspection.Id)
            {
                return BadRequest();
            }

            db.Entry(inspection).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!InspectionExists(id))
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

        // POST: api/Inspection
        [ResponseType(typeof(Inspection))]
        public IHttpActionResult PostInspection(Inspection inspection)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Inspections.Add(inspection);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = inspection.Id }, inspection);
        }

        // DELETE: api/Inspection/5
        [ResponseType(typeof(Inspection))]
        public IHttpActionResult DeleteInspection(int id)
        {
            Inspection inspection = db.Inspections.Find(id);
            if (inspection == null)
            {
                return NotFound();
            }

            db.Inspections.Remove(inspection);
            db.SaveChanges();

            return Ok(inspection);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool InspectionExists(int id)
        {
            return db.Inspections.Count(e => e.Id == id) > 0;
        }
    }

    public class InspectionDecorator
    {
        public InspectionDecorator(List<Inspection> _data, Customer _customer, List<FinYear> _finYears, List<LookUp> _inspectionStatus)
        {
            entData = _data;
            customer = _customer;
            finYears = _finYears;
            inspectionStatus = _inspectionStatus;
        }
        public List<Inspection> entData { get; set; }
        public List<FinYear> finYears { get; set; }
        public Customer customer { get; set; }
        public List<LookUp> inspectionStatus { get; set; }
    }

}