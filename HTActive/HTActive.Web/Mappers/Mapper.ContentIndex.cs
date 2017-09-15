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
        public static ContentIndexModel ToModel(ContentIndex entity)
        {
            if (entity == null) return null;
            return new ContentIndexModel()
            {
                Id = entity.Id,
                PolicyTitle = entity.PolicyTitle,
                PolicyContent = entity.PolicyContent,
                ButtonReadMore = entity.ButtonReadMore,
                ButtonContact = entity.ButtonContact,
                FeatureTitle = entity.FeatureTitle,
                FeatureContent = entity.FeatureContent,
                AboutUsTitle = entity.AboutUsTitle,
                AboutUsContent = entity.AboutUsContent,
                ContactTitle = entity.ContactTitle,
                ContactContent = entity.ContactContent,
                AboutUsLeftTitle = entity.AboutUsLeftTitle,
                AboutUsLeftSrc = entity.AboutUsLeftSrc,
                AboutUsLeftSubContent = entity.AboutUsLeftSubContent,
                AboutUsLeftContent = entity.AboutUsLeftContent,
                AboutUsLeftUrl = entity.AboutUsLeftUrl,
                WhyChooseTitle = entity.WhyChooseTitle,
                WhyChooseContent = entity.WhyChooseContent,
                HomePageTitle = entity.HomePageTitle
            };
        }
    }
}
