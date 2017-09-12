using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Common
{
    public enum RoleTypeEnums
    {
        NormalUser = 10,
        Mod = 20,
        Operator = 30,
        Admin = 40,
        SuperAdmin = 50,
        Executor = 60,
    }
    public enum UserStatusEnums
    {
        Active = 1,
        Deactive = 2,
    }
    public enum SiteLanguageTypeEnums
    {
        VI = 1,
        EN = 2
    }
    public enum ProductTypeEnums
    {
        Game = 1,
        Web = 2,
        Application = 3
    }
    public enum ServiceTypeEnums
    {
        Game = 1,
        Web = 2,
        Application = 3
    }
}
