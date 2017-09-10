using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using HTActive.Repository;
using Microsoft.AspNetCore.Mvc;
using HTActive.Web.Mappers;
using Microsoft.EntityFrameworkCore;

namespace HTActive_Web.Controllers
{
    public class ProductController : BaseController
    {
        public ProductController(InstanceRepository instanceRepository) : base(instanceRepository)
        {
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult ProductDetail()
        {
            var id = RouteData.Values["id"];
            return View(id);
        }
    }
}
