using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OBSMVC.Models;
//kjlkjjljljlj;lj;lj;ljl;
namespace OBSMVC.Controllers
{
    public class ObmvcController : Controller
    {
        MiniProject1Entities dc = new MiniProject1Entities();
        // GET: LoginPage
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Home()
        {
            return View();
        }
        public ActionResult AdminLogin()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AdminLogin(AdminLogin obj)
        {
            var res = (from t in dc.AdminLogins
                       where t.UserName == obj.UserName && t.Pwd == obj.Pwd
                       select t).Count();

            if (res > 0)
            {
               
                return RedirectToAction("CustTranModul");
            }
            else
            {

                ViewBag.e = "Invalid username and pwd";
            }

            return View();
        }
        public ActionResult CustTranModul()
        {
            return View();
        }
        public ActionResult AfCustTranModul()
        {
            return View();
        }
        public ActionResult EmpTranModul()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Newcustomer(NewCustomer obj)
        {
            dc.NewCustomers.Add(obj);
            int i = dc.SaveChanges();
            if(i>0)
            {
                ViewBag.e = "Record Inserted";
            }
            else
            {
                ViewBag.e = "Insertion Failed";
            }
            return View();
        }




    }
}
