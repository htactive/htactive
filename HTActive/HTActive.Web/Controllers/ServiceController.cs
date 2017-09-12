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
    public class ServiceController : BaseController
    {
        public ServiceController(InstanceRepository instanceRepository) : base(instanceRepository)
        {
        }

        public IActionResult Index()
        {
            var contentServiceEntity = this.InstanceRepository.ContentServiceRepository.GetAll()
                .Include(x => x.ContentServicePartitions)
                .OrderBy(x => x.Language == this.SiteLanguage ? 0 : 1).FirstOrDefault();
            var viewmodel = new ServicePageViewModel();
            var services = this.InstanceRepository.ServiceRepository.GetAll()
                .Include(x => x.ServiceLanguages)
                .OrderBy(x => x.Priority).ToList();
            viewmodel.Services = services.Select(s =>
            {
                var sm = Mapper.ToModel(s);
                if (sm != null)
                {
                    sm.ServiceLanguages = s?.ServiceLanguages?.Select(Mapper.ToModel).ToList();
                }
                return sm;
            }).ToList();
            viewmodel.ContentService = Mapper.ToModel(contentServiceEntity);
            viewmodel.ContentService.ContentServicePartitions = contentServiceEntity?.ContentServicePartitions?.Select(Mapper.ToModel).ToList();
            ViewBag.Tab = "services";
            return View(viewmodel);
        }

    }
}
