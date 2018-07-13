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
    public class ModuleNoteController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/ModuleNote
        //public IQueryable<ModuleNote> GetModuleNotes()
        //{
        //    return db.ModuleNotes;
        //}

        // GET: api/ModuleNote/5
        [ResponseType(typeof(ModuleNote))]
        [Route("api/ModuleNote/{custId}")]
        public IHttpActionResult GetModuleNote(string custId,string moduleName)
        {
            List<ModuleNote> moduleNote = db.ModuleNotes.Where(i => i.Cust_Id == custId && i.ModuleName == moduleName).ToList();// .Find(id);
            if (moduleNote == null)
            {
                moduleNote = new List<ModuleNote>();
            }

            return Ok(moduleNote);
        }

        // PUT: api/ModuleNote/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutModuleNote(int id, ModuleNote moduleNote)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != moduleNote.Id)
            {
                return BadRequest();
            }

            db.Entry(moduleNote).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ModuleNoteExists(id))
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

        // POST: api/ModuleNote
        //[ResponseType(typeof(ModuleNote))]
        //public IHttpActionResult PostModuleNote(ModuleNote moduleNote)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return BadRequest(ModelState);
        //    }

        //    db.ModuleNotes.Add(moduleNote);
        //    db.SaveChanges();

        //    return CreatedAtRoute("DefaultApi", new { id = moduleNote.Id }, moduleNote);
        //}

        //// DELETE: api/ModuleNote/5
        //[ResponseType(typeof(ModuleNote))]
        //public IHttpActionResult DeleteModuleNote(int id)
        //{
        //    ModuleNote moduleNote = db.ModuleNotes.Find(id);
        //    if (moduleNote == null)
        //    {
        //        return NotFound();
        //    }

        //    db.ModuleNotes.Remove(moduleNote);
        //    db.SaveChanges();

        //    return Ok(moduleNote);
        //}

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ModuleNoteExists(int id)
        {
            return db.ModuleNotes.Count(e => e.Id == id) > 0;
        }
    }
    public class ModuleNoteDecorator
    {
        public ModuleNoteDecorator(ModuleNote _entData, Customer _customer)
        {
            entData = _entData;
            customer = _customer;
        }

        public ModuleNote entData;
        public Customer customer;
    }
}