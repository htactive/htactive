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
        public static ProductModel ToModel(Product entity)
        {
            if (entity == null) return null;
            return new ProductModel()
            {
                Id = entity.Id,
                Priority = entity.Priority,
                ProductType = entity.ProductType
            };
        }
    }
}
