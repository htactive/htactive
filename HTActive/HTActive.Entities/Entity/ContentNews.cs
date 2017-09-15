using HTActive.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class ContentNews
    {
        [Key]
        public int Id { get; set; }
        public SiteLanguageTypeEnums Language { get; set; }

        [StringLength(512)]
        public string ReadMoreText { get; set; }
        [StringLength(512)]
        public string ByText { get; set; }
        [StringLength(512)]
        public string NewsPageTitle { get; set; }
        [StringLength(512)]
        public string ShareThisText { get; set; }
        [StringLength(512)]
        public string RelatedText { get; set; }
    }
}
