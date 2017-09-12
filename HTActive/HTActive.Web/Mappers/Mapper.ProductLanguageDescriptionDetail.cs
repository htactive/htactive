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
        public static ProductLanguageDescriptionDetailModel ToModel(ProductLanguageDescriptionDetail entity)
        {
            if (entity == null) return null;
            return new ProductLanguageDescriptionDetailModel()
            {
                Id = entity.Id,
                Content = entity.Content,
                ProductLanguageId = entity.ProductLanguageId,
                Title = entity.Title,
            };
        }
    }
}
