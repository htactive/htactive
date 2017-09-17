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
        public static NewsLanguageModel ToModel(NewsLanguage entity)
        {
            if (entity == null) return null;
            return new NewsLanguageModel()
            {
                Id = entity.Id,
                NewsId = entity.NewsId,
                Language = entity.Language,
                Author = entity.Author,
                CoverSource = entity.CoverSource,
                Slug = entity.Slug,
                CoverType = entity.CoverType,
                Description = entity.Description,
                Html = entity.Html,
                Title = entity.Title
            };
        }
    }
}
