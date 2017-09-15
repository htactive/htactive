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
        public static ContentServiceModel ToModel(ContentService entity)
        {
            if (entity == null) return null;
            return new ContentServiceModel()
            {
                Id = entity.Id,
                Title = entity.Title,
                Language = entity.Language,
                Content = entity.Content,
                ServicePageTitle = entity.ServicePageTitle
            };
        }
    }
}
