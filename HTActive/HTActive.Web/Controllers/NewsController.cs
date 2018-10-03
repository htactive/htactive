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
using HTActive.Entities;

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

            var relatedItems = this.InstanceRepository.NewsRelatedNewsRepository.GetAll().Include("RelatedNews.NewsLanguages.NewsLanguageImages").Where(x => x.CurrentNewsId == n.Id).OrderBy(x => x.Priority).Take(5).ToList();
            viewmodel.RelatedNewses = relatedItems.Select(x =>
            {
                var nModel = Mapper.ToModel(x.RelatedNews);
                if (nModel != null)
                {
                    nModel.NewsLanguages = x?.RelatedNews?.NewsLanguages.Select(k =>
                    {
                        var nl = Mapper.ToModel(k);
                        if (nl != null)
                        {
                            nl.NewsLanguageImages = k?.NewsLanguageImages.Select(Mapper.ToModel).ToList();
                        }
                        return nl;
                    }).ToList();
                }
                return nModel;
            }).ToList();

            ViewBag.Tab = "news";
            return View(viewmodel);
        }

        [HttpPost, Route("api-post-news")]
        public bool PostNews([FromBody]NewsLanguageModel model)
        {
            var news_entity = new News();
            news_entity.Id = 0;
            news_entity.CreatedDate = DateTime.Now;
            news_entity.Priority = 1;
           
            try
            {
                news_entity.NewsLanguages = new List<NewsLanguage>();
                news_entity.NewsLanguages.Add(new NewsLanguage()
                {
                    Id = 0,
                    Author = model.Author,
                    CoverSource = model.CoverSource,
                    CoverType = model.CoverType,
                    Description = model.Description,
                    Html = model.Html,
                    Language = model.Language,
                    NewsId = news_entity.Id,
                    Title = model.Title,
                    Slug = model.Slug
                });
                this.InstanceRepository.NewsRepository.Save(news_entity);
                this.InstanceRepository.Commit();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
