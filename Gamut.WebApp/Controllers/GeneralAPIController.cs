using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Web.Http;
using System.Web.Http.Description;
using Gamut.WebApp.Models;

namespace Gamut.WebApp.Controllers
{

    public class GeneralAPIController : ApiController
    {
        //private SchoolManagementEntities db = new SchoolManagementEntities();

        // GET: api/GeneralAPI
        
        private gamutdatabaseEntities db = new gamutdatabaseEntities();
        public IQueryable<General> GetGeneral()
        {
            return db.Generals;
        }

        // GET: api/GeneralAPI/5
        [ResponseType(typeof(GeneralDecorator))]
        public IHttpActionResult GetGeneral(string Id)
        {
            General general = db.Generals.Find(Id);
            if (general == null)
            {
                return NotFound();
            }

            Customer customer = db.Customers.Find(Id);
            List<LookUp> govtSponsored = db.LookUps.Where(id => id.LookUp_Table == "General" && id.LookUp_Name == "Govt_sponsored").ToList();
            List<LookUp> dCCO = db.LookUps.Where(id => id.LookUp_Table == "General" && id.LookUp_Name == "DCCO").ToList();
            GeneralDecorator generalDecorator = new GeneralDecorator(general, govtSponsored.ToList(), dCCO, customer);
            
            return Ok(generalDecorator);
        }

        // PUT: api/GeneralAPI/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutGeneral(string Id, General general)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (Id != general.Cust_id)
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
                if (!CustomerExists(Id))
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

        // POST: api/GeneralAPI
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

        // DELETE: api/GeneralAPI/5
        [ResponseType(typeof(General))]
        public IHttpActionResult DeleteGeneral(string Id)
        {
            General general = db.Generals.Find(Id);
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


    public class GeneralDecorator
    {
        public GeneralDecorator(General _data, List<LookUp> _lookupGovtSponsored, List<LookUp> _lookupDCCO,Customer _customer)
        {
            entData = _data;
            lookupGovtSponsored = _lookupGovtSponsored;
            lookupDCCO = _lookupDCCO;
            customer = _customer;
        }
        public General entData;
        public string clientName;
        public List<LookUp> lookupGovtSponsored;
        public List<LookUp> lookupDCCO;
        public Customer customer;

    }
}
