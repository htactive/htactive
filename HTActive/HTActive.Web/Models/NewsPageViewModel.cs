using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{
    public class NewsPageViewModel
    {
        public ContentNewsModel ContentNews { get; set; }
        public List<NewsModel> Newses { get; set; }
    }
}
