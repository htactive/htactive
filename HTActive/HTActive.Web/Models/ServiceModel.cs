using HTActive.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{
    public class ServiceModel
    {
        public int Id { get; set; }
        public int? Priority { get; set; }
        public ServiceTypeEnums? ServiceType { get; set; }
        public List<ServiceLanguageModel> ServiceLanguages { get; set; }
    }

    public class ServiceLanguageModel
    {
        public int Id { get; set; }
        public int? ServiceId { get; set; }
        public ServiceModel Service { get; set; }
        public SiteLanguageTypeEnums Language { get; set; }

        public string Description { get; set; }
        public string ImageSrc { get; set; }
        public string ImageAlt { get; set; }
        public string TitleText { get; set; }
        public string TitleTagForSEO { get; set; }

    }
}
