using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{
    public class ContentIndexModel
    {
        public int Id { get; set; }
        public string PolicyTitle { get; set; }
        public string PolicyContent { get; set; }
        public string ButtonReadMore { get; set; }
        public string ButtonContact { get; set; }
        public string FeatureTitle { get; set; }
        public string FeatureContent { get; set; }
        public List<ContentIndexFeatureModel> Features { get; set; }
        public string AboutUsTitle { get; set; }
        public string AboutUsContent { get; set; }
        public string ContactTitle { get; set; }
        public string ContactContent { get; set; }
        public string AboutUsLeftTitle { get; set; }
        public string AboutUsLeftSrc { get; set; }
        public string AboutUsLeftSubContent { get; set; }
        public string AboutUsLeftContent { get; set; }
        public string AboutUsLeftUrl { get; set; }
        public List<ContentIndexAboutUsRightModel> AboutUsRights { get; set; }
        public string WhyChooseTitle { get; set; }
        public string WhyChooseContent { get; set; }
        public List<ContentIndexWhyChooseModel> WhyChooseReasons { get; set; }
        public List<ContentIndexTopSlideModel> TopSlides { get; set; }
    }
    public class ContentIndexWhyChooseModel
    {
        public int Id { get; set; }
        public int? ContentIndexId { get; set; }
        public ContentIndexModel ContentIndex { get; set; }
        public int? Priority { get; set; }
        public string Title { get; set; }
        public string SubTitle { get; set; }
        public string Content { get; set; }
        public string Src { get; set; }

    }
    public class ContentIndexAboutUsRightModel
    {
        public int Id { get; set; }
        public int? ContentIndexId { get; set; }
        public ContentIndexModel ContentIndex { get; set; }
        public int? Priority { get; set; }
        public string Icon { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }

    }
    public class ContentIndexFeatureModel
    {
        public int Id { get; set; }
        public int? ContentIndexId { get; set; }
        public ContentIndexModel ContentIndex { get; set; }
        public int? Priority { get; set; }
        public string Icon { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string Url { get; set; }

    }
    public class ContentIndexTopSlideModel
    {
        public int Id { get; set; }
        public int? ContentIndexId { get; set; }
        public ContentIndexModel ContentIndex { get; set; }
        public int? Priority { get; set; }
        public string MainImageSrc { get; set; }
        public string MainImageAlt { get; set; }
        public string SlideTitle { get; set; }
        public string SlideContents { get; set; }
        public string SlideFooter { get; set; }
        public string RightImageSrc { get; set; }
        public string RightImageAlt { get; set; }

    }
}
