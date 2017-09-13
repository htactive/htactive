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
        public static ProductLanguageLinkStoreModel ToModel(ProductLanguageLinkStore entity)
        {
            if (entity == null) return null;
            return new ProductLanguageLinkStoreModel()
            {
                Id = entity.Id,
                ProductLanguageId = entity.ProductLanguageId,
                Text = entity.Text,
                Link = entity.Link,
            };
        }
    }
}
