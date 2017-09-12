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
        public static ServiceLanguageModel ToModel(ServiceLanguage entity)
        {
            if (entity == null) return null;
            return new ServiceLanguageModel()
            {
                Id = entity.Id,
                Description = entity.Description,
                ImageAlt = entity.ImageAlt,
                ImageSrc = entity.ImageSrc,
                Language = entity.Language,
                ServiceId = entity.ServiceId,
                TitleTagForSEO = entity.TitleTagForSEO,
                TitleText = entity.TitleText
            };
        }
    }
}
