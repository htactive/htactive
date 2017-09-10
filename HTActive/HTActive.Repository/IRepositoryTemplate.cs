﻿
using HTActive.Entities;
using HTActive.Core.Repository;
namespace HTActive.Repository
{
    public partial interface IClaimRepository : IBaseRepository<Claim>
    {
    }

    public partial interface IImageRepository : IBaseRepository<Image>
    {
    }

    public partial interface IRoleRepository : IBaseRepository<Role>
    {
    }

    public partial interface IRoleClaimRepository : IBaseRepository<RoleClaim>
    {
    }

    public partial interface IUserRepository : IBaseRepository<User>
    {
    }

    public partial interface IUserLoginTokenRepository : IBaseRepository<UserLoginToken>
    {
    }

    public partial interface IUserProfileRepository : IBaseRepository<UserProfile>
    {
    }

    public partial interface IUserRoleRepository : IBaseRepository<UserRole>
    {
    }

    public partial interface IContentFooterRepository : IBaseRepository<ContentFooter>
    {
    }

    public partial interface IContentIndexRepository : IBaseRepository<ContentIndex>
    {
    }
}