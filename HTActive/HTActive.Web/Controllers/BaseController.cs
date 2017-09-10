using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.Filters;
using HTActive.Repository;
using HTActive.Common;

namespace HTActive_Web.Controllers
{
    public class BaseController : Controller
    {
        protected InstanceRepository InstanceRepository { get; private set; }
        public BaseController(InstanceRepository instanceRepository)
        {
            this.InstanceRepository = instanceRepository;
        }
        protected SiteLanguageTypeEnums SiteLanguage
        {
            get
            {
                var language = HTActive.Common.SiteLanguageTypeEnums.EN;
                var url = this.HttpContext.Request.Path;
                if (url != null && url.StartsWithSegments(new Microsoft.AspNetCore.Http.PathString("/vi")))
                {
                    language = HTActive.Common.SiteLanguageTypeEnums.VI;
                }
                return language;
            }
        }
        public override void OnActionExecuting(ActionExecutingContext context)
        {
            base.OnActionExecuting(context);
            ViewBag.SiteLanguage = this.SiteLanguage;
        }
    }
}
