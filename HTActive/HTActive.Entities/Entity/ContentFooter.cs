using HTActive.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class ContentFooter
    {
        [Key]
        public int Id { get; set; }
        public SiteLanguageTypeEnums? Language { get; set; }
        [StringLength(512)]
        public string Content1 { get; set; }
        [StringLength(512)]
        public string Address { get; set; }
        [StringLength(512)]
        public string Address2 { get; set; }
        [StringLength(512)]
        public string Mobile { get; set; }
        [StringLength(512)]
        public string Phone { get; set; }
        [StringLength(512)]
        public string Email { get; set; }
        [StringLength(512)]
        public string Skype { get; set; }
        [StringLength(512)]
        public string YouTube { get; set; }
        [StringLength(512)]
        public string Facebook { get; set; }
        [StringLength(512)]
        public string GooglePlus { get; set; }
        [StringLength(512)]
        public string Pinterest { get; set; }
        [StringLength(512)]
        public string Flickr { get; set; }
        [StringLength(512)]
        public string LinkedIn { get; set; }
        [StringLength(512)]
        public string Twitter { get; set; }

        [StringLength(512)]
        public string AboutUsText { get; set; }
        [StringLength(512)]
        public string AboutUsHref { get; set; }

        [StringLength(512)]
        public string CopyRight { get; set; }
        [StringLength(512)]
        public string Slogan { get; set; }

        public List<ContentMenu> ContentMenus { get; set; }
    }
}
