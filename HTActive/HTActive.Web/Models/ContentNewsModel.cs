using HTActive.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{
    public class ContentNewsModel
    {
        public int Id { get; set; }
        public SiteLanguageTypeEnums Language { get; set; }

        public string ReadMoreText { get; set; }
        public string ByText { get; set; }
        public string NewsPageTitle { get; set; }
    }
}
