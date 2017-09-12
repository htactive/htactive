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
        public static ProductLanguageImageDetailModel ToModel(ProductLanguageImageDetail entity)
        {
            if (entity == null) return null;
            return new ProductLanguageImageDetailModel()
            {
                Id = entity.Id,
                Alt = entity.Alt,
                ProductLanguageId = entity.ProductLanguageId,
                Src = entity.Src
            };
        }
    }
}
