using HTActive.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{

    public class ContentServiceModel
    {
        public int Id { get; set; }
        public SiteLanguageTypeEnums Language { get; set; }

        public string Title { get; set; }
        public string Content { get; set; }
        public List<ContentServicePartitionModel> ContentServicePartitions { get; set; }
    }

    public class ContentServicePartitionModel
    {
        public int Id { get; set; }
        public int? ContentServiceId { get; set; }
        public ContentServiceModel ContentService { get; set; }
        public int? Priority { get; set; }
        public ServiceTypeEnums ServiceType { get; set; }

        public string Title { get; set; }
        public string Content { get; set; }

    }
}
