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

    public class NewsController : ApiController
    {
        private gamutdatabaseEntities db = new gamutdatabaseEntities();

        [ResponseType(typeof(News))]
        [Route("api/News/{id}")]
        public IHttpActionResult GetNewsByCustomer(string id)
        {

            List<News> news = db.News.Where(i => i.Cust_id == id).ToList();
            if (news == null)
            {
                return null;
            }
            Customer customer = db.Customers.Find(id);
            NewsDecorator interestDecorator = new NewsDecorator(news, customer);
            return Ok(interestDecorator);
        }

        // PUT: api/Interest/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutNews(int id, News news)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != news.NewsID)
            {
                return BadRequest();
            }

            db.Entry(news).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {

                throw;

            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        public class NewsDecorator
        {
            public NewsDecorator(List<News> _data, Customer _customer)
            {
                entData = _data;
                customer = _customer;
            }
            public List<News> entData { get; set; }
            public Customer customer
            {
                get; set;
            }
        }
    }

}
