using HTActive.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class ContentService
    {
        [Key]
        public int Id { get; set; }
        public SiteLanguageTypeEnums Language { get; set; }

        [StringLength(512)]
        public string Title { get; set; }
        [StringLength(512)]
        public string Content { get; set; }
        [StringLength(512)]
        public string ServicePageTitle { get; set; }
        public List<ContentServicePartition> ContentServicePartitions { get; set; }
    }

    public class ContentServicePartition
    {
        [Key]
        public int Id { get; set; }
        public int? ContentServiceId { get; set; }
        [ForeignKey("ContentServiceId")]
        public ContentService ContentService { get; set; }
        public int? Priority { get; set; }
        public ServiceTypeEnums ServiceType { get; set; }

        [StringLength(512)]
        public string Title { get; set; }
        [StringLength(512)]
        public string Content { get; set; }

    }
}
