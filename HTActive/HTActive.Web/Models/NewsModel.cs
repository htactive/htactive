using HTActive.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{

    public class NewsModel
    {
        public int Id { get; set; }
        public int Priority { get; set; }
        public DateTime? CreatedDate { get; set; }

        public List<NewsLanguageModel> NewsLanguages { get; set; }
    }
    public class NewsLanguageModel
    {
        public int Id { get; set; }
        public SiteLanguageTypeEnums? Language { get; set; }
        public int? NewsId { get; set; }
        public NewsModel News { get; set; }

        public NewsCoverTypeEnums? CoverType { get; set; }
        public string CoverSource { get; set; }
        public string Slug { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Author { get; set; }
        public string Html { get; set; }
        public List<NewsLanguageImageModel> NewsLanguageImages { get; set; }
    }
    public class NewsLanguageImageModel
    {
        public int Id { get; set; }
        public int NewsLanguageId { get; set; }
        public NewsLanguageModel NewsLanguage { get; set; }
        public NewsCoverTypeEnums? CoverType { get; set; }
        public string Src { get; set; }
        public string Alt { get; set; }
        public int? Priority { get; set; }
    }
}
