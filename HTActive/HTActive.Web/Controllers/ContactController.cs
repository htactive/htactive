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
    public class ContactController : BaseController
    {
        public ContactController(InstanceRepository instanceRepository) : base(instanceRepository)
        {
        }

        public IActionResult Index()
        {
            var contentContactEntity = this.InstanceRepository.ContentContactRepository.GetAll()
                .OrderByDescending(x => x.Language == this.SiteLanguage).FirstOrDefault();
            var viewmodel = new ContactPageViewModel()
            {
                ContentContact = Mapper.ToModel(contentContactEntity)
            };
            ViewBag.Tab = "contact";
            return View(viewmodel);
        }

    }
}
