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
    public class CustDocumentController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

       

        // GET: api/CustDocument/5
        [ResponseType(typeof(CustDocument))]
        public IHttpActionResult GetCustDocument(string id)
        {

            List<CustDocument> documents = db.CustDocuments.Where(i => i.Cust_id == id).ToList();
            if (documents == null && documents.Count() <=0)
            {
                return null;
            }
            Customer customer = db.Customers.Find(documents[0].Cust_id);
            CustDocumentDecorator custDocumentDecorator = new CustDocumentDecorator(documents, customer);
            return Ok(custDocumentDecorator);
      }

        // PUT: api/CustDocument/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutCustDocument(int id, CustDocument custDocument)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != custDocument.Id)
            {
                return BadRequest();
            }

            db.Entry(custDocument).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CustDocumentExists(id))
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

        // POST: api/CustDocument
        [ResponseType(typeof(CustDocument))]
        public IHttpActionResult PostCustDocument(CustDocument custDocument)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.CustDocuments.Add(custDocument);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = custDocument.Id }, custDocument);
        }

        // DELETE: api/CustDocument/5
        [ResponseType(typeof(CustDocument))]
        public IHttpActionResult DeleteCustDocument(int id)
        {
            CustDocument custDocument = db.CustDocuments.Find(id);
            if (custDocument == null)
            {
                return NotFound();
            }

            db.CustDocuments.Remove(custDocument);
            db.SaveChanges();

            return Ok(custDocument);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool CustDocumentExists(int id)
        {
            return db.CustDocuments.Count(e => e.Id == id) > 0;
        }
    }
    public class CustDocumentDecorator
    {
        public CustDocumentDecorator(List<CustDocument> _data, Customer _customer)
        {
            entData = _data;
            customer = _customer;
        }
        public List<CustDocument> entData { get; set; }
        public Customer customer { get; set; }
    }
}