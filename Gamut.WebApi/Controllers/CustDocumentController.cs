﻿using System;
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
    public class CustDocumentController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

       

        // GET: api/CustDocument/5
        [ResponseType(typeof(CustDocumentDecorator))]
        public IHttpActionResult GetCustDocument(string id, string fromDate, string toDate)
        {
            DateTime dtFrom = Convert.ToDateTime(DateTime.ParseExact(fromDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));
            DateTime dtTo = Convert.ToDateTime(DateTime.ParseExact(toDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));

            var documents = (from i in db.CustDocuments
                            join p in db.Periodicities on i.Periodicity equals p.Id
                                            join d in db.DocumentTypes on  i.DocumentType equals d.Id
                             where i.Cust_id == id && (i.CompiledDate >= dtFrom && i.CompiledDate <= dtTo)  
                                            select new { Id = i.Id, Cust_id = i.Cust_id, Periodicity = p.PeriodicityType, PeriodicityTypeId = p.Id, DocumentType = d.DocumentType1, DocumentTypeId = d.Id, Submitted = i.Submitted, SubmittedDate = i.SubmittedDate, DeviationNoted = i.DeviationNoted, CompiledDate = i.CompiledDate,IsChecked=i.IsChecked,MonitorId=i.MonitorId,SortOn=i.SortOn,LastUpdatedBy=i.LastUpdatedBy,LastUpdatedOn=i.LastUpdatedOn,DocumentURL=i.DocumentURL }).OrderBy(c => c.SortOn).ToList();
            //  db.CustDocuments.Where(i => i.Cust_id == id && (i.CompiledDate >= dtFrom && i.CompiledDate <= dtTo)).OrderBy(c=>c.SortOn).ToList();
            if (documents == null || documents.Count() <=0)
            {
                return NotFound();
            }
            Customer customer = db.Customers.Find(documents[0].Cust_id);

            List<FinYear> finYears = new List<FinYear>();
            finYears.Add(new FinYear(DateTime.Now));
            finYears.Add(new FinYear(DateTime.Now.AddYears(-1)));
            finYears.Add(new FinYear(DateTime.Now.AddYears(-2)));
            finYears.Add(new FinYear(DateTime.Now.AddYears(-3)));
            List<Periodicity> periodictyType = db.Periodicities.ToList();
            List<DocumentType> documentType = db.DocumentTypes.ToList();
            CustDocumentDecorator custDocumentDecorator = new CustDocumentDecorator(documents, customer,finYears,periodictyType,documentType);

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

        //// POST: api/CustDocument
        //[ResponseType(typeof(CustDocument))]
        //public IHttpActionResult PostCustDocument(CustDocument custDocument)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return BadRequest(ModelState);
        //    }

        //    db.CustDocuments.Add(custDocument);
        //    db.SaveChanges();

        //    return CreatedAtRoute("DefaultApi", new { id = custDocument.Id }, custDocument);
        //}

        //// DELETE: api/CustDocument/5
        //[ResponseType(typeof(CustDocument))]
        //public IHttpActionResult DeleteCustDocument(int id)
        //{
        //    CustDocument custDocument = db.CustDocuments.Find(id);
        //    if (custDocument == null)
        //    {
        //        return NotFound();
        //    }

        //    db.CustDocuments.Remove(custDocument);
        //    db.SaveChanges();

        //    return Ok(custDocument);
        //}

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
        public CustDocumentDecorator(dynamic _data, Customer _customer, List<FinYear> _finYears, List<Periodicity> _periodicity,List<DocumentType> _documentType)
        {
            entData = _data;
            customer = _customer;
            finYears = _finYears;
            periodictyType = _periodicity;
            documentType = _documentType;

        }
        public dynamic entData { get; set; }
        public List<FinYear> finYears { get; set; }
        public Customer customer { get; set; }
        public IList<Periodicity> periodictyType {get;set;}
        public IList<DocumentType> documentType { get; set; }

    }
       

    public class FinYear
    {
        public FinYear(DateTime date)
        {
            FyName = ToFinancialYear(date);
            startDate = new DateTime(date.Year, 4, 1);
            endDate = new DateTime(date.Year+1, 3, 31);
        }
        public string FyName { get; set; }
        public DateTime startDate { get; set; }
        public DateTime endDate { get; set; }

        private  string ToFinancialYear( DateTime dateTime)
        {
            return "FY" + (dateTime.Month >= 4 ? dateTime.AddYears(0).ToString("yyyy") : dateTime.ToString("yyyy")) + "-" + (dateTime.Month >= 4 ? dateTime.AddYears(1).ToString("yyyy") : dateTime.ToString("yyyy"));
        }

    }
}