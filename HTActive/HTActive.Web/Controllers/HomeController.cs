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
    public class HomeController : BaseController
    {
        public HomeController(InstanceRepository instanceRepository) : base(instanceRepository)
        {
        }
        public IActionResult Index()
        {
            var entity = this.InstanceRepository.ContentIndexRepository.GetAll()
                .Include(x => x.WhyChooseReasons)
                .Include(x => x.Features)
                .Include(x => x.AboutUsRights)
                .Include(x => x.TopSlides)
                .FirstOrDefault(x => x.Language == this.SiteLanguage);
            var model = Mapper.ToModel(entity);
            if (model != null)
            {
                model.TopSlides = entity.TopSlides.Select(Mapper.ToModel).ToList();
                model.Features = entity.Features.Select(Mapper.ToModel).ToList();
                model.AboutUsRights = entity.AboutUsRights.Select(Mapper.ToModel).ToList();
                model.WhyChooseReasons = entity.WhyChooseReasons.Select(Mapper.ToModel).ToList();
            }
            var viewmodel = new HTActive.Web.Models.HomePageViewModel()
            {
                ContentIndex = model
            };
            return View(viewmodel);
        }
        public IActionResult Error()
        {
            ViewData["RequestId"] = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
            return View();
        }
    }
}
