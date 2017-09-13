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
    public class ProductController : BaseController
    {
        public ProductController(InstanceRepository instanceRepository) : base(instanceRepository)
        {
        }
        public IActionResult Index()
        {
            var contentEntity = this.InstanceRepository.ContentProductRepository.GetAll().FirstOrDefault(x => x.Language == this.SiteLanguage);
            var viewmodel = new ProductPageViewModel() { ContentProduct = Mapper.ToModel(contentEntity) };
            var productEntities = this.InstanceRepository.ProductRepository.GetAll()
                .Include(x => x.ProductLanguages)
                .Include("ProductLanguages.ImageDetails")
                .Include("ProductLanguages.ProductLanguageDescriptionDetails")
                .Include("ProductLanguages.ProductLanguageProductDetails")
                .Include("ProductLanguages.ProductLanguageReviewDetails")
                .ToList();
            var products = new List<ProductModel>();
            foreach (var item in productEntities)
            {
                var p = Mapper.ToModel(item);
                p.ProductLanguages = item.ProductLanguages.Select(pl =>
                {
                    var plm = Mapper.ToModel(pl);
                    if (plm != null)
                    {
                        plm.ImageDetails = pl?.ImageDetails?.Select(Mapper.ToModel).ToList();
                        plm.ProductLanguageDescriptionDetails = pl?.ProductLanguageDescriptionDetails?.Select(Mapper.ToModel).ToList();
                        plm.ProductLanguageProductDetails = pl?.ProductLanguageProductDetails?.Select(Mapper.ToModel).ToList();
                        plm.ProductLanguageReviewDetails = pl?.ProductLanguageReviewDetails?.Select(Mapper.ToModel).ToList();
                    }
                    return plm;
                }).ToList();
                products.Add(p);
            }
            viewmodel.Products = products;
            ViewBag.Tab = "products";
            return View(viewmodel);
        }
        public IActionResult ProductDetail()
        {
            var id = RouteData.Values["id"]?.ToString();
            var idInt = 0;
            int.TryParse(id, out idInt);
            var viewmodel = new ProductDetailPageViewModel();
            var item = this.InstanceRepository.ProductRepository.GetAll()
                .Include("ProductLanguages.ImageDetails")
                .Include("ProductLanguages.ProductLanguageDescriptionDetails")
                .Include("ProductLanguages.ProductLanguageProductDetails")
                .Include("ProductLanguages.ProductLanguageReviewDetails")
                .Include("ProductLanguages.LinkStores")
                .FirstOrDefault(x => x.Id == idInt);
            var model = Mapper.ToModel(item);
            model.ProductLanguages = item.ProductLanguages.Select(pl =>
            {
                var plm = Mapper.ToModel(pl);
                if (plm != null)
                {
                    plm.ImageDetails = pl?.ImageDetails?.Select(Mapper.ToModel).ToList();
                    plm.ProductLanguageDescriptionDetails = pl?.ProductLanguageDescriptionDetails?.Select(Mapper.ToModel).ToList();
                    plm.ProductLanguageProductDetails = pl?.ProductLanguageProductDetails?.Select(Mapper.ToModel).ToList();
                    plm.ProductLanguageReviewDetails = pl?.ProductLanguageReviewDetails?.Select(Mapper.ToModel).ToList();
                    plm.LinkStores = pl?.LinkStores?.Select(Mapper.ToModel).ToList();
                }
                return plm;
            }).ToList();
            viewmodel.Product = model;
            ViewBag.Tab = "products";
            return View(viewmodel);
        }
    }
}
