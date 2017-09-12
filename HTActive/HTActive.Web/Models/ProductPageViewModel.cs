using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Models
{
    public class ProductPageViewModel
    {
        public ContentProductModel ContentProduct { get; set; }
        public List<ProductModel> Products { get; set; }
    }
}
