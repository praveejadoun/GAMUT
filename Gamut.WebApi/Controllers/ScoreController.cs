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
    public class ScoreController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        // GET: api/Score
        public IQueryable<Score> GetScores()
        {
            return db.Scores;
        }

        // GET: api/Score/5
        [ResponseType(typeof(Score))]
        public IHttpActionResult GetScore(string id)
        {

            List<Score> scores = db.Scores.Where(i => i.Cust_Id == id).ToList();
            if (scores == null || scores.Count <= 0)
            {
                return NotFound();
            }
            //public ScoreDecorator(List<Security> _data, List<LookUp> _lstRefrence, List<LookUp> _lstCommunication, List<LookUp> _lstReminders, List<LookUp> _lstMyRepository, Customer _customer)


            List<LookUp> lstRefrence = db.LookUps.Where(i => i.LookUp_Table == "Score" && i.LookUp_Name == "References").ToList();
            List<LookUp> lstCommunication = db.LookUps.Where(i => i.LookUp_Table == "Score" && i.LookUp_Name == "communication").ToList();
            List<LookUp> lstReminders = db.LookUps.Where(i => i.LookUp_Table == "Score" && i.LookUp_Name == "Reminders").ToList();
            List<LookUp> lstMyrepository = db.LookUps.Where(i => i.LookUp_Table == "Score" && i.LookUp_Name == "My repository").ToList();

            List<GeneralGurantor> gurantors = db.GeneralGurantors.Where(i => i.Cust_Id == id).ToList();


            Customer customer = db.Customers.Find(id);
            ScoreDecorator scoreDecorator = new ScoreDecorator(scores,  lstRefrence,  lstCommunication, lstReminders, lstMyrepository, customer);
            return Ok(scoreDecorator);

        }

        // PUT: api/Score/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutScore(int id, Score score)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != score.Id)
            {
                return BadRequest();
            }

            db.Entry(score).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ScoreExists(id))
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

       
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ScoreExists(int id)
        {
            return db.Scores.Count(e => e.Id == id) > 0;
        }
    }

    public class ScoreDecorator
    {
        public ScoreDecorator(List<Score> _data, List<LookUp> _lstRefrence, List<LookUp> _lstCommunication, List<LookUp> _lstReminders, List<LookUp> _lstMyRepository, Customer _customer)
        {
            entData = _data;
            customer = _customer;
            lstRefrences = _lstRefrence;
            lstCommunications = _lstCommunication;
            lstReminders = _lstReminders;
            lstMyRepository = _lstMyRepository;

        }
        public List<Score> entData { get; set; }
        public List<LookUp> lstRefrences { get; set; }
        public List<LookUp> lstCommunications { get; set; }
        public List<LookUp> lstReminders { get; set; }
        public List<LookUp> lstMyRepository { get; set; }


        public Customer customer { get; set; }
    }
}