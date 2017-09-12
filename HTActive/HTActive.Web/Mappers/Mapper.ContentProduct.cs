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
        public static ContentProductModel ToModel(ContentProduct entity)
        {
            if (entity == null) return null;
            return new ContentProductModel()
            {
                ButtonReadMore = entity.ButtonReadMore,
                Content = entity.Content,
                Header1 = entity.Header1,
                Header1Content = entity.Header1Content,
                Header2 = entity.Header2,
                Header2Content = entity.Header2Content,
                Header3 = entity.Header3,
                Header3Content = entity.Header3Content,
                Id = entity.Id,
                Language = entity.Language,
                Title = entity.Title,
            };
        }
    }
}
