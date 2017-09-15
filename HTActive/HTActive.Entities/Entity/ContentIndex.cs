using HTActive.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class ContentIndex
    {
        [Key]
        public int Id { get; set; }
        public SiteLanguageTypeEnums? Language{ get; set; }
        [StringLength(512)]
        public string PolicyTitle { get; set; }
        [StringLength(512)]
        public string PolicyContent { get; set; }
        [StringLength(512)]
        public string ButtonReadMore { get; set; }
        [StringLength(512)]
        public string ButtonContact { get; set; }
        [StringLength(512)]
        public string FeatureTitle { get; set; }
        [StringLength(512)]
        public string FeatureContent { get; set; }
        [StringLength(512)]
        public string AboutUsTitle { get; set; }
        [StringLength(512)]
        public string AboutUsContent { get; set; }
        [StringLength(512)]
        public string ContactTitle { get; set; }
        [StringLength(512)]
        public string ContactContent { get; set; }
        [StringLength(512)]
        public string AboutUsLeftTitle { get; set; }
        [StringLength(512)]
        public string AboutUsLeftSrc { get; set; }
        [StringLength(512)]
        public string AboutUsLeftSubContent { get; set; }
        [StringLength(512)]
        public string AboutUsLeftContent { get; set; }
        [StringLength(512)]
        public string AboutUsLeftUrl { get; set; }
        [StringLength(512)]
        public string WhyChooseTitle { get; set; }
        [StringLength(512)]
        public string WhyChooseContent { get; set; }
        [StringLength(512)]
        public string HomePageTitle { get; set; }
        public List<ContentIndexWhyChoose> WhyChooseReasons { get; set; }
        public List<ContentIndexAboutUsRight> AboutUsRights { get; set; }
        public List<ContentIndexFeature> Features { get; set; }
        public List<ContentIndexTopSlide> TopSlides { get; set; }
    }
    public class ContentIndexWhyChoose
    {
        [Key]
        public int Id { get; set; }
        public int? ContentIndexId { get; set; }
        [ForeignKey("ContentIndexId")]
        public ContentIndex ContentIndex { get; set; }
        public int? Priority { get; set; }
        [StringLength(512)]
        public string Title { get; set; }
        [StringLength(512)]
        public string SubTitle { get; set; }
        [StringLength(512)]
        public string Content { get; set; }
        [StringLength(512)]
        public string Src { get; set; }

    }
    public class ContentIndexAboutUsRight
    {
        [Key]
        public int Id { get; set; }
        public int? ContentIndexId { get; set; }
        [ForeignKey("ContentIndexId")]
        public ContentIndex ContentIndex { get; set; }
        public int? Priority { get; set; }
        [StringLength(512)]
        public string Icon { get; set; }
        [StringLength(512)]
        public string Title { get; set; }
        [StringLength(512)]
        public string Content { get; set; }

    }
    public class ContentIndexFeature
    {
        [Key]
        public int Id { get; set; }
        public int? ContentIndexId { get; set; }
        [ForeignKey("ContentIndexId")]
        public ContentIndex ContentIndex { get; set; }
        public int? Priority { get; set; }
        [StringLength(512)]
        public string Icon { get; set; }
        [StringLength(512)]
        public string Title { get; set; }
        [StringLength(512)]
        public string Content { get; set; }
        [StringLength(512)]
        public string Url { get; set; }

    }
    public class ContentIndexTopSlide
    {
        [Key]
        public int Id { get; set; }
        public int? ContentIndexId { get; set; }
        [ForeignKey("ContentIndexId")]
        public ContentIndex ContentIndex { get; set; }
        public int? Priority { get; set; }
        [StringLength(512)]
        public string MainImageSrc { get; set; }
        [StringLength(512)]
        public string MainImageAlt { get; set; }
        [StringLength(512)]
        public string SlideTitle { get; set; }
        [StringLength(512)]
        public string SlideContents { get; set; }
        [StringLength(512)]
        public string SlideFooter { get; set; }
        [StringLength(512)]
        public string RightImageSrc { get; set; }
        [StringLength(512)]
        public string RightImageAlt { get; set; }

    }
}
