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
        public static ProductLanguageModel ToModel(ProductLanguage entity)
        {
            if (entity == null) return null;
            return new ProductLanguageModel()
            {
                Id = entity.Id,
                ProductId = entity.ProductId,
                Language = entity.Language,
                TypeName = entity.TypeName,
                ImageDetailText = entity.ImageDetailText,
                DescriptionDetailText = entity.DescriptionDetailText,
                DescriptionDetailHeader = entity.DescriptionDetailHeader,
                ReviewText = entity.ReviewText,
                VideoDetailText = entity.VideoDetailText,
                VideoDetailSrc = entity.VideoDetailSrc,
                VideoDetailAlt = entity.VideoDetailAlt,
                LinkStoreHeader = entity.LinkStoreHeader,
                LinkStoreContent = entity.LinkStoreContent,
                LinkIOSStore = entity.LinkIOSStore,
                LinkAndroidStore = entity.LinkAndroidStore,
                LinkWPStore = entity.LinkWPStore,
                Description = entity.Description,
                ImageSrc = entity.ImageSrc,
                ImageAlt = entity.ImageAlt,
                TitleTagForSEO = entity.TitleTagForSEO,
                TitleText = entity.TitleText,
                ProductDetailText = entity.ProductDetailText
            };
        }
    }
}
