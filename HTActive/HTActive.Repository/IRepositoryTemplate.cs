
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

    public partial interface IContentProductRepository : IBaseRepository<ContentProduct>
    {
    }

    public partial interface IProductRepository : IBaseRepository<Product>
    {
    }

    public partial interface IProductLanguageRepository : IBaseRepository<ProductLanguage>
    {
    }

    public partial interface IServiceRepository : IBaseRepository<Service>
    {
    }

    public partial interface IServiceLanguageRepository : IBaseRepository<ServiceLanguage>
    {
    }

    public partial interface IContentServiceRepository : IBaseRepository<ContentService>
    {
    }

    public partial interface IContentServicePartitionRepository : IBaseRepository<ContentServicePartition>
    {
    }

    public partial interface IContentContactRepository : IBaseRepository<ContentContact>
    {
    }

    public partial interface IContentNewsRepository : IBaseRepository<ContentNews>
    {
    }

    public partial interface INewsRepository : IBaseRepository<News>
    {
    }

    public partial interface INewsLanguageRepository : IBaseRepository<NewsLanguage>
    {
    }

    public partial interface INewsLanguageImageRepository : IBaseRepository<NewsLanguageImage>
    {
    }
}