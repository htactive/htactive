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
        public static NewsLanguageImageModel ToModel(NewsLanguageImage entity)
        {
            if (entity == null) return null;
            return new NewsLanguageImageModel()
            {
                Id = entity.Id,
                Alt = entity.Alt,
                Src = entity.Src,
                NewsLanguageId = entity.NewsLanguageId,
                Priority = entity.Priority,
                CoverType = entity.CoverType
            };
        }
    }
}
