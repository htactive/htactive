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
            var viewmodel = new NewsPageViewModel();
            var contentEntity = this.InstanceRepository.ContentNewsRepository.GetAll().OrderByDescending(x => x.Language == this.SiteLanguage).FirstOrDefault();
            viewmodel.ContentNews = Mapper.ToModel(contentEntity);
            var newsEntities = this.InstanceRepository.NewsRepository.GetAll()
                .Include("NewsLanguages.NewsLanguageImages").ToList();
            viewmodel.Newses = newsEntities.Select(x =>
            {
                var n = Mapper.ToModel(x);
                if (n != null)
                {
                    n.NewsLanguages = x?.NewsLanguages.Select(k =>
                    {
                        var nl = Mapper.ToModel(k);
                        if (nl != null)
                        {
                            nl.NewsLanguageImages = k?.NewsLanguageImages.Select(Mapper.ToModel).ToList();
                        }
                        return nl;
                    }).ToList();
                }
                return n;
            }).ToList();
            ViewBag.Tab = "news";
            return View(viewmodel);
        }
        public IActionResult NewsDetail()
        {
            var id = RouteData.Values["id"]?.ToString();
            int.TryParse(id, out int idInt);
            var viewmodel = new NewsDetailViewModel();
            var newEntity = this.InstanceRepository.NewsRepository.GetAll()
                .Include("NewsLanguages.NewsLanguageImages").FirstOrDefault(x => x.Id == idInt);

            var n = Mapper.ToModel(newEntity);
            if (n != null)
            {
                n.NewsLanguages = newEntity?.NewsLanguages.Select(k =>
                {
                    var nl = Mapper.ToModel(k);
                    if (nl != null)
                    {
                        nl.NewsLanguageImages = k?.NewsLanguageImages.Select(Mapper.ToModel).ToList();
                    }
                    return nl;
                }).ToList();
            }
            viewmodel.News = n;
            var contentEntity = this.InstanceRepository.ContentNewsRepository.GetAll().OrderByDescending(x => x.Language == this.SiteLanguage).FirstOrDefault();
            viewmodel.ContentNews = Mapper.ToModel(contentEntity);
            ViewBag.Tab = "news";
            return View(viewmodel);
        }
    }
}
