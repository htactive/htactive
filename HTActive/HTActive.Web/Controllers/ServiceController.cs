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
    [Route("services")]
    public class ServiceController : BaseController
    {
        public ServiceController(InstanceRepository instanceRepository) : base(instanceRepository)
        {
        }

        public IActionResult Index()
        {
            return View();
        }
        
    }
}
