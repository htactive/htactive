using HTActive.Entities;
using HTActive.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web.Mappers
{
    public partial class Mapper
    {
        public static ProductLanguageProductDetailModel ToModel(ProductLanguageProductDetail entity)
        {
            if (entity == null) return null;
            return new ProductLanguageProductDetailModel()
            {
                Id = entity.Id,
                Content = entity.Content,
                Header = entity.Header,
                ProductLanguageId = entity.ProductLanguageId,
                Priority = entity.Priority
            };
        }
    }
}
