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
            List<LookUp> bankingArgmt = db.LookUps.Where(id => id.LookUp_Table == "General" && id.LookUp_Name == "Banking_Argmt").ToList();
            List<LookUp> takeover = db.LookUps.Where(id => id.LookUp_Table == "General" && id.LookUp_Name == "Takeover").ToList();
            Customer gur1  = db.Customers.Find(general.Gurantor_1);
            Customer gur2 = db.Customers.Find(general.Gurantor_2);
            Customer prom1 = db.Customers.Find(general.Promoter_1);
            Customer prom2 = db.Customers.Find(general.Promoter_2);
            Customer prom3 = db.Customers.Find(general.Promoter_3);

            string gur1name = string.Empty;
            string gur2name = string.Empty;
            string prom1name= string.Empty;
            string prom2name= string.Empty;
            string prom3name= string.Empty;

            if (gur1 != null)
            {
                gur1name = gur1.Cust_Name;
            }

            if (gur2 != null)
            {
                gur2name = gur2.Cust_Name;
            }

            if (prom1 != null)
            {
                prom1name = prom1.Cust_Name;
            }

            if (prom2 != null)
            {
                prom2name = prom2.Cust_Name;
            }

            if (prom3 != null)
            {
                prom3name = prom3.Cust_Name;
            }

            GeneralDecorator generalDecorator = new GeneralDecorator (general, govtSponsored, dCCO, customer, bankingArgmt,takeover,gur1name,gur2name,prom1name,prom2name,prom3name);
            
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

        // PUT: api/GeneralAPI/5
        [ResponseType(typeof(void))]
        public IHttpActionResult OptionsGeneral(string Id, General general)
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
        public GeneralDecorator(General _data, List<LookUp> _lookupGovtSponsored, List<LookUp> _lookupDCCO,Customer _customer,List<LookUp> _bankingArgmt,List<LookUp> _takeover, string _gur1name, string _gur2name, string _prom1name, string _prom2name, string _prom3name)
        {
            entData = _data;
            lookupGovtSponsored = _lookupGovtSponsored;
            lookupDCCO = _lookupDCCO;
            customer = _customer;
            bankingArgmt = _bankingArgmt;
            takeover = _takeover;
            gur1name = _gur1name;
            gur2name = _gur2name;
            prom1name = _prom1name;
            prom2name = _prom2name;
            prom3name = _prom3name;
        }
        public General entData { get; set; }
        public string clientName { get; set; }
        public List<LookUp> lookupGovtSponsored { get; set; }
        public List<LookUp> lookupDCCO { get; set; }
        public Customer customer { get; set; }
        public List<LookUp> bankingArgmt { get; set; }
        public List<LookUp> takeover { get; set; }
        public string gur1name, gur2name, prom1name, prom2name, prom3name;

    }
}
