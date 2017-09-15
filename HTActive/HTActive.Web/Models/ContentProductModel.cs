using HTActive.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{
    public class ContentProductModel
    {
        public int Id { get; set; }
        public SiteLanguageTypeEnums Language { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string Header1 { get; set; }
        public string Header1Content { get; set; }
        public string Header2 { get; set; }
        public string Header2Content { get; set; }
        public string Header3 { get; set; }
        public string Header3Content { get; set; }
        public string ButtonReadMore { get; set; }
        public string ProductPageTitle { get; set; }
    }
}
