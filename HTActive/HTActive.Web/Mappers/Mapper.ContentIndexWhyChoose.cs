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
        public static ContentIndexWhyChooseModel ToModel(ContentIndexWhyChoose entity)
        {
            if (entity == null) return null;
            return new ContentIndexWhyChooseModel()
            {
                Id = entity.Id,
                ContentIndexId = entity.ContentIndexId,
                Priority = entity.Priority,
                Title = entity.Title,
                SubTitle = entity.SubTitle,
                Content = entity.Content,
                Src = entity.Src,
            };
        }
    }
}
