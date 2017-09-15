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
        public static ContentNewsModel ToModel(ContentNews entity)
        {
            if (entity == null) return null;
            return new ContentNewsModel()
            {
                Id = entity.Id,
                ByText = entity.ByText,
                Language = entity.Language,
                ReadMoreText = entity.ReadMoreText,
                NewsPageTitle = entity.NewsPageTitle
            };
        }
    }
}
