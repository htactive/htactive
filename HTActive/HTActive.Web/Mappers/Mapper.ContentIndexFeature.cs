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
        public static ContentIndexFeatureModel ToModel(ContentIndexFeature entity)
        {
            if (entity == null) return null;
            return new ContentIndexFeatureModel()
            {
                Id = entity.Id,
                ContentIndexId = entity.ContentIndexId,
                Priority = entity.Priority,
                Icon = entity.Icon,
                Title = entity.Title,
                Content = entity.Content,
                Url = entity.Url,
            };
        }
    }
}
