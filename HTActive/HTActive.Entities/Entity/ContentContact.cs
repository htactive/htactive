using HTActive.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class ContentContact
    {
        [Key]
        public int Id { get; set; }
        public SiteLanguageTypeEnums? Language { get; set; }
        [StringLength(512)]
        public string ContactUs { get; set; }
        [StringLength(512)]
        public string Title { get; set; }
        [StringLength(512)]
        public string Phone { get; set; }
        [StringLength(512)]
        public string Address { get; set; }
        [StringLength(512)]
        public string Skype { get; set; }
        [StringLength(512)]
        public string HTEmail { get; set; }
        [StringLength(512)]
        public string Content { get; set; }
        [StringLength(512)]
        public string Name { get; set; }
        [StringLength(512)]
        public string NameHolder { get; set; }
        [StringLength(512)]
        public string Mail { get; set; }
        [StringLength(512)]
        public string MailHolder { get; set; }
        [StringLength(512)]
        public string Message { get; set; }
        [StringLength(512)]
        public string MessageHolder { get; set; }
        [StringLength(512)]
        public string Subject { get; set; }
        [StringLength(512)]
        public string SubjectHolder { get; set; }
        [StringLength(512)]
        public string Button { get; set; }
        [StringLength(512)]
        public string Received { get; set; }
        [StringLength(512)]
        public string ErrorMessage { get; set; }
        [StringLength(512)]
        public string ThanksMessage { get; set; }
        [StringLength(512)]
        public string Thanks { get; set; }
        [StringLength(512)]
        public string SorryMessage { get; set; }
        [StringLength(512)]
        public string Sorry { get; set; }
        [StringLength(512)]
        public string Loading { get; set; }
    }
}
