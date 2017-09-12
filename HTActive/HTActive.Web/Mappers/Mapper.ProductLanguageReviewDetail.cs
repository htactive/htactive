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
        public static ProductLanguageReviewDetailModel ToModel(ProductLanguageReviewDetail entity)
        {
            if (entity == null) return null;
            return new ProductLanguageReviewDetailModel()
            {
                Id = entity.Id,
                Detail = entity.Detail,
                ImageUrl = entity.ImageUrl,
                RateDate = entity.RateDate,
                RateScore = entity.RateScore,
                ProductLanguageId = entity.ProductLanguageId,
                Title = entity.Title,
            };
        }
    }
}
