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
    public class AccountDetailsController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/AccountDetails
        public IQueryable<AccountDetail> GetAccountDetails()
        {
            return db.AccountDetails;
        }

        // GET: api/AccountDetails/5
        [ResponseType(typeof(AccountDetail))]
        public IHttpActionResult GetAccountDetail(string id)
        {
            List<AccountDetail> accountDetail = db.AccountDetails.Where(i => i.Cust_Id == id).ToList();

            if (accountDetail == null || accountDetail.Count <= 0)
            {
                return NotFound();
            }

            Customer customer = db.Customers.Where(i => i.Cust_id == id).FirstOrDefault();
            AccountDetailDecorator accountDetailDecorator = new AccountDetailDecorator(accountDetail, customer);
            return Ok(accountDetailDecorator);
        }

        // PUT: api/AccountDetails/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutAccountDetail(int id, AccountDetail accountDetail)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != accountDetail.Id)
            {
                return BadRequest();
            }
            accountDetail.lastUpdateOn = DateTime.Now;
            accountDetail.lastUpdateBy = "system";

            db.Entry(accountDetail).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AccountDetailExists(id))
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

        // POST: api/AccountDetails
        [ResponseType(typeof(AccountDetail))]
        public IHttpActionResult PostAccountDetail(AccountDetail accountDetail)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.AccountDetails.Add(accountDetail);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = accountDetail.Id }, accountDetail);
        }

        // DELETE: api/AccountDetails/5
        [ResponseType(typeof(AccountDetail))]
        public IHttpActionResult DeleteAccountDetail(int id)
        {
            AccountDetail accountDetail = db.AccountDetails.Find(id);
            if (accountDetail == null)
            {
                return NotFound();
            }

            db.AccountDetails.Remove(accountDetail);
            db.SaveChanges();

            return Ok(accountDetail);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool AccountDetailExists(int id)
        {
            return db.AccountDetails.Count(e => e.Id == id) > 0;
        }
    }

    public class AccountDetailDecorator
    {
        public AccountDetailDecorator(List<AccountDetail> _detaildata, Customer _customer)
        {
            customer = _customer;
            detailData = _detaildata;
        }

        public List<AccountDetail> detailData { get; set; }
        public Customer customer { get; set; }
    }
}