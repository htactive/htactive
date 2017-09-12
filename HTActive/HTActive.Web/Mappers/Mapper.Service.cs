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
        public static ServiceModel ToModel(Service entity)
        {
            if (entity == null) return null;
            return new ServiceModel()
            {
                Id = entity.Id,
                Priority = entity.Priority,
                ServiceType = entity.ServiceType,
            };
        }
    }
}
