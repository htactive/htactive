using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class ContentMenu
    {
        [Key]
        public int Id { get; set; }
        [StringLength(512)]
        public string Tab { get; set; }
        [StringLength(512)]
        public string Text { get; set; }
        [StringLength(512)]
        public string Link { get; set; }
        public int? Priority { get; set; }
        public int? ContentFooterId { get; set; }

        [ForeignKey("ContentFooterId")]
        public ContentFooter ContentFooter { get; set; }
    }
}
