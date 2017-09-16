using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{
    public class NewsDetailViewModel
    {
        public NewsModel News { get; set; }
        public ContentNewsModel ContentNews { get; set; }
        public List<NewsModel> RelatedNewses { get; set; }
    }
}
