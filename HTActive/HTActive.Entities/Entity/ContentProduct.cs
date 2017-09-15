using HTActive.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class ContentProduct
    {
        [Key]
        public int Id { get; set; }
        public SiteLanguageTypeEnums Language{ get; set; }
        [StringLength(512)]
        public string Title { get; set; }
        [StringLength(512)]
        public string Content { get; set; }
        [StringLength(512)]
        public string Header1 { get; set; }
        [StringLength(512)]
        public string Header1Content { get; set; }
        [StringLength(512)]
        public string Header2 { get; set; }
        [StringLength(512)]
        public string Header2Content { get; set; }
        [StringLength(512)]
        public string Header3 { get; set; }
        [StringLength(512)]
        public string Header3Content { get; set; }
        [StringLength(512)]
        public string ButtonReadMore { get; set; }
        [StringLength(512)]
        public string ProductPageTitle { get; set; }
    }
}
