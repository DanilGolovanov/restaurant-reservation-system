using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace T2RMSWS.Controllers
{
    public class SchedulerController : Controller
    {
       
        public IActionResult Index()
        {
            return View();
        }

    }
}