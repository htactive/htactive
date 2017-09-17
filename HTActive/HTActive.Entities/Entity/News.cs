using HTActive.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class News
    {
        [Key]
        public int Id { get; set; }
        public int Priority { get; set; }
        public DateTime? CreatedDate { get; set; }

        public List<NewsLanguage> NewsLanguages { get; set; }

        [ForeignKey("CurrentNewsId")]
        public List<NewsRelatedNews> CurrentNewsRelatedNewses { get; set; }
        [ForeignKey("RelatedNewsId")]
        public List<NewsRelatedNews> RelatedNewsRelatedNewses { get; set; }
    }
    public class NewsLanguage
    {
        [Key]
        public int Id { get; set; }
        public SiteLanguageTypeEnums? Language { get; set; }
        public int? NewsId { get; set; }
        [ForeignKey("NewsId")]
        public News News { get; set; }

        public NewsCoverTypeEnums? CoverType { get; set; }
        [StringLength(512)]
        public string CoverSource { get; set; }
        [StringLength(512)]
        public string Title { get; set; }
        [StringLength(512)]
        public string Description { get; set; }
        [StringLength(512)]
        public string Author { get; set; }
        [StringLength(512)]
        public string Slug { get; set; }
        [StringLength(int.MaxValue)]
        public string Html { get; set; }
        public List<NewsLanguageImage> NewsLanguageImages { get; set; }
    }
    public class NewsLanguageImage
    {
        [Key]
        public int Id { get; set; }

        public int NewsLanguageId { get; set; }
        [ForeignKey("NewsLanguageId")]
        public NewsLanguage NewsLanguage { get; set; }

        public string Src { get; set; }
        public string Alt { get; set; }
        public int? Priority { get; set; }
        public NewsCoverTypeEnums? CoverType { get; set; }
    }
    public class NewsRelatedNews
    {
        [Key]
        public int Id { get; set; }
        public int? CurrentNewsId { get; set; }
        public int? RelatedNewsId { get; set; }
        public int? Priority { get; set; }

        [ForeignKey("CurrentNewsId")]
        public News CurrentNews { get; set; }
        [ForeignKey("RelatedNewsId")]
        public News RelatedNews { get; set; }
    }
}
