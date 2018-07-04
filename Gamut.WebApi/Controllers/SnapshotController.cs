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
    public class SnapshotController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        //// GET: api/Snapshot
        //public IQueryable<Snapshot> GetSnapshots()
        //{
        //    return db.Snapshots;
        //}

        // GET: api/Snapshot/5
        [ResponseType(typeof(SnapshotDecorator))]
        public IHttpActionResult GetSnapshot(string id,string fromDate, string toDate)
        {
            DateTime dtFrom = Convert.ToDateTime(DateTime.ParseExact(fromDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));
            DateTime dtTo = Convert.ToDateTime(DateTime.ParseExact(toDate, "dd-MM-yyyy", CultureInfo.InvariantCulture));

            List<Snapshot> snapshots = db.Snapshots.Where(i => i.Cust_Id == id && (i.compiledDate >= dtFrom && i.compiledDate <= dtTo)).ToList();
            if (snapshots == null || snapshots.Count() <= 0)
            {
                //  return Ok(new SnapshotDecorator(new List<Snapshot>(), new Customer()));
                return NotFound();
            }

            Customer customer = db.Customers.Find(snapshots[0].Cust_Id);
            SnapshotDecorator snapshotDecorator = new SnapshotDecorator(snapshots, customer);
            return Ok(snapshotDecorator);
        }

        // PUT: api/Snapshot/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutSnapshot(int id, Snapshot snapshot)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != snapshot.Id)
            {
                return BadRequest();
            }

            db.Entry(snapshot).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SnapshotExists(id))
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

        // POST: api/Snapshot
        //[ResponseType(typeof(Snapshot))]
        //public IHttpActionResult PostSnapshot(Snapshot snapshot)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return BadRequest(ModelState);
        //    }

        //    db.Snapshots.Add(snapshot);
        //    db.SaveChanges();

        //    return CreatedAtRoute("DefaultApi", new { id = snapshot.Id }, snapshot);
        //}

        // DELETE: api/Snapshot/5
        //[ResponseType(typeof(Snapshot))]
        //public IHttpActionResult DeleteSnapshot(int id)
        //{
        //    Snapshot snapshot = db.Snapshots.Find(id);
        //    if (snapshot == null)
        //    {
        //        return NotFound();
        //    }

        //    db.Snapshots.Remove(snapshot);
        //    db.SaveChanges();

        //    return Ok(snapshot);
        //}

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool SnapshotExists(int id)
        {
            return db.Snapshots.Count(e => e.Id == id) > 0;
        }
    }

    public class SnapshotDecorator
    {
        public SnapshotDecorator(List<Snapshot> _data, Customer _customer)
        {
            entData = _data;
            customer = _customer;
        }
        public List<Snapshot> entData { get; set; }
        public Customer customer
        {
            get; set;
        }
    }
}