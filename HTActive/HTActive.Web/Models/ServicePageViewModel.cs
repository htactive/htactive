using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{
    public class ServicePageViewModel
    {
        public ContentServiceModel ContentService { get; set; }
        public List<ServiceModel> Services { get; set; }
    }
}
