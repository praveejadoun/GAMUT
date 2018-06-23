using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Web.Http;
using System.Web.Http.Description;
using Gamut.WebAPI.Models;

namespace Gamut.WebAPI.Controllers
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
            List<GeneralGurantor> gurantors = db.GeneralGurantors.Where(i => i.Cust_Id == customer.Cust_id).ToList();
            List<AccountDetail> exposures = db.AccountDetails.Where(i => i.Cust_Id == customer.Cust_id).ToList();
            general.SMA = exposures.Max(i => i.smaRiskType);
            
            foreach (AccountDetail accountDetil in exposures)
            {
                if (accountDetil.bankingArr != null && !general.Banking_Argmt.ToUpper().Contains(accountDetil.bankingArr.ToUpper()))
                {
                    general.Banking_Argmt = general.Banking_Argmt + "," + accountDetil.bankingArr;
                }

                if (accountDetil.leadBank != null && !general.Lead_Bank.ToUpper().Contains(accountDetil.leadBank.ToUpper()))
                {
                    general.Lead_Bank = general.Lead_Bank + "," + accountDetil.leadBank;
                }
            }

            int? latestInternalRatingYear = db.Ratings.Where(j=>j.ratingType=="INTERNAL" && j.Cust_Id==Id).Select(p=>p.ratingYear).DefaultIfEmpty(0).Max();
            Rating internalRating = db.Ratings.Where(i => i.ratingType == "INTERNAL" && i.ratingYear == latestInternalRatingYear).SingleOrDefault();
            if (internalRating != null)
            {
                general.Internal_Rating = internalRating.ratingValue;
                general.Internal_Rating_AsOn = internalRating.dateTo; 

            }

            int? latestExternalRatingYear = db.Ratings.Where(j => j.ratingType == "EXTERNAL" && j.Cust_Id == Id).Select(p => p.ratingYear).DefaultIfEmpty(0).Max();
            Rating externalRating = db.Ratings.Where(i => i.ratingType == "EXTERNAL" && i.ratingYear == latestExternalRatingYear).SingleOrDefault();
            if (externalRating != null)
            {
                general.External_Rating = externalRating.ratingValue;
                general.External_Rating_AsOn = externalRating.dateTo;
            }

            double totalLimit =0;
            double totalBalance=0;
            double totalExposure=0;
            
            foreach (AccountDetail gen in exposures)
            {
                if (gen.limit != null)  totalLimit = totalLimit +    gen.limit.Value;
                if (gen.balance != null) totalBalance = totalBalance + gen.balance.Value;
                if (gen.exposure != null) totalExposure = totalExposure + gen.exposure.Value;
            }
            List<GeneralGurantorDecorator> gurantorsDecorator = new List<GeneralGurantorDecorator>();

            foreach (GeneralGurantor gur in gurantors)
            {
                Customer cust = db.Customers.Find(gur.gurCust_Id);
                GeneralGurantorDecorator gurantorDecorator = new GeneralGurantorDecorator(gur, cust.Cust_Name);
                gurantorsDecorator.Add(gurantorDecorator);
            }
            
            GeneralDecorator generalDecorator = new GeneralDecorator (general, govtSponsored, dCCO, customer, bankingArgmt,takeover,gurantorsDecorator,exposures,totalLimit,totalBalance,totalExposure);
            
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
        public GeneralDecorator(General _data, List<LookUp> _lookupGovtSponsored, List<LookUp> _lookupDCCO,Customer _customer,List<LookUp> _bankingArgmt,List<LookUp> _takeover,List<GeneralGurantorDecorator> _gurantors, List<AccountDetail> _exposures,double _totalLimit,double _totalBalance,double _totalExposure) 
        {
            entData = _data;
            lookupGovtSponsored = _lookupGovtSponsored;
            lookupDCCO = _lookupDCCO;
            customer = _customer;
            bankingArgmt = _bankingArgmt;
            takeover = _takeover;
            gurantors = _gurantors;
            exposures = _exposures;
            totalBalance = _totalBalance;
            totalExposure = _totalExposure;
            totalLimit = _totalLimit;
        }
        public General entData { get; set; }
        public string clientName { get; set; }
        public List<LookUp> lookupGovtSponsored { get; set; }
        public List<LookUp> lookupDCCO { get; set; }
        public Customer customer { get; set; }
        public List<LookUp> bankingArgmt { get; set; }
        public List<LookUp> takeover { get; set; }
        public List<GeneralGurantorDecorator> gurantors { get; set; }
        public List<AccountDetail> exposures { get; set; }
        public double totalLimit;
        public double totalBalance;
        public double totalExposure;
    }

   
}
