using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using HTActive.Repository;
using Microsoft.AspNetCore.Mvc;
using HTActive.Web.Mappers;
using Microsoft.EntityFrameworkCore;
using HTActive.Web.Models;

namespace HTActive_Web.Controllers
{
    public class NewsController : BaseController
    {
        public NewsController(InstanceRepository instanceRepository) : base(instanceRepository)
        {
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult NewsDetail()
        {
            return View();
        }
    }
}
