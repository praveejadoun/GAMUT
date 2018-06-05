using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace Gamut.WebAPI.Controllers
{
    //[Authorize]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }

        public ActionResult General()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection Credentials)
        {
            //check for login validations
            //to do : Return something
            return View("Index");
        }


    }
}
