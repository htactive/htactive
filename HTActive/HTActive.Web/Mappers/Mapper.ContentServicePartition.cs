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
        public static ContentServicePartitionModel ToModel(ContentServicePartition entity)
        {
            if (entity == null) return null;
            return new ContentServicePartitionModel()
            {
                Id = entity.Id,
                Title = entity.Title,
                ContentServiceId = entity.ContentServiceId,
                Priority = entity.Priority,
                ServiceType = entity.ServiceType,
                Content = entity.Content
            };
        }
    }
}
