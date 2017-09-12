using HTActive.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{
    public class ContentContactModel
    {
        public int Id { get; set; }
        public SiteLanguageTypeEnums? Language { get; set; }
        public string ContactUs { get; set; }
        public string Title { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Skype { get; set; }
        public string HTEmail { get; set; }
        public string Content { get; set; }
        public string Name { get; set; }
        public string NameHolder { get; set; }
        public string Mail { get; set; }
        public string MailHolder { get; set; }
        public string Message { get; set; }
        public string MessageHolder { get; set; }
        public string Subject { get; set; }
        public string SubjectHolder { get; set; }
        public string Button { get; set; }
        public string Received { get; set; }
        public string ErrorMessage { get; set; }
        public string ThanksMessage { get; set; }
        public string Thanks { get; set; }
        public string SorryMessage { get; set; }
        public string Sorry { get; set; }
        public string Loading { get; set; }
    }
}
