using HTActive.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public class Role
    {   
        [Key]
        public int Id { get; set; }
        [System.ComponentModel.DataAnnotations.StringLength(256)]
        public string Name { get; set; }
        [System.ComponentModel.DataAnnotations.StringLength(256)]
        public string DisplayName { get; set; }
        public RoleTypeEnums RoleType { get; set; }
        public List<UserRole> UserRoles { get; set; }

        public List<RoleClaim> RoleClaims { get; set; }
    }
}
