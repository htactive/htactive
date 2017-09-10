using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.Filters;

namespace HTActive_Web.Controllers
{
    public class BaseController : Controller
    {
        public override void OnActionExecuting(ActionExecutingContext context)
        {
            base.OnActionExecuting(context);

            var language = HTActive.Common.SiteLanguageTypeEnums.EN;
            var url = context.HttpContext.Request.Path;
            if (url != null && url.StartsWithSegments(new Microsoft.AspNetCore.Http.PathString("/vi")))
            {
                language = HTActive.Common.SiteLanguageTypeEnums.VI;
            }
            ViewBag.SiteLanguage = language;
        }
    }
}
