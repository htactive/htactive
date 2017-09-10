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
        public static ContentIndexTopSlideModel ToModel(ContentIndexTopSlide entity)
        {
            if (entity == null) return null;
            return new ContentIndexTopSlideModel()
            {
                Id = entity.Id,
                ContentIndexId = entity.ContentIndexId,
                Priority = entity.Priority,
                MainImageSrc = entity.MainImageSrc,
                MainImageAlt = entity.MainImageAlt,
                SlideTitle = entity.SlideTitle,
                SlideContents = entity.SlideContents,
                SlideFooter = entity.SlideFooter,
                RightImageSrc = entity.RightImageSrc,
                RightImageAlt = entity.RightImageAlt,
            };
        }
    }
}
