using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Gamut.WebAPI.Controllers
{
    public class ManageDataController : Controller
    {
        // GET: ManageData
        public ActionResult Index()
        {
            return View();
        }

        // GET: Login page
        public ActionResult Login()
        {
            return View();
        }

        public ActionResult AddNew()
        {
            return PartialView("AddNew");
        }

        public ActionResult General()
        {
            return PartialView("General");
        }

        public ActionResult Documents()
        {
            return PartialView("Documents");
        }

        public ActionResult ShowAll()
        {
            return PartialView("ShowAll");
        }

        public ActionResult Edit()
        {
            return PartialView("Edit");
        }

        public ActionResult Delete()
        {
            return PartialView("Delete");
        }
    }
}