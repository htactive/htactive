
using HTActive.Entities;
using HTActive.Core.Repository;
namespace HTActive.Repository
{
    public partial class ClaimRepository : BaseRepository<Claim, InstanceEntities>, IClaimRepository
    {
        public ClaimRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(Claim model)
        {
            return model.Id;
        }
	}

    public partial class ImageRepository : BaseRepository<Image, InstanceEntities>, IImageRepository
    {
        public ImageRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(Image model)
        {
            return model.Id;
        }
	}

    public partial class RoleRepository : BaseRepository<Role, InstanceEntities>, IRoleRepository
    {
        public RoleRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(Role model)
        {
            return model.Id;
        }
	}

    public partial class RoleClaimRepository : BaseRepository<RoleClaim, InstanceEntities>, IRoleClaimRepository
    {
        public RoleClaimRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(RoleClaim model)
        {
            return model.Id;
        }
	}

    public partial class UserRepository : BaseRepository<User, InstanceEntities>, IUserRepository
    {
        public UserRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(User model)
        {
            return model.Id;
        }
	}

    public partial class UserLoginTokenRepository : BaseRepository<UserLoginToken, InstanceEntities>, IUserLoginTokenRepository
    {
        public UserLoginTokenRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(UserLoginToken model)
        {
            return model.Id;
        }
	}

    public partial class UserProfileRepository : BaseRepository<UserProfile, InstanceEntities>, IUserProfileRepository
    {
        public UserProfileRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(UserProfile model)
        {
            return model.Id;
        }
	}

    public partial class UserRoleRepository : BaseRepository<UserRole, InstanceEntities>, IUserRoleRepository
    {
        public UserRoleRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(UserRole model)
        {
            return model.Id;
        }
	}

    public partial class ContentFooterRepository : BaseRepository<ContentFooter, InstanceEntities>, IContentFooterRepository
    {
        public ContentFooterRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(ContentFooter model)
        {
            return model.Id;
        }
	}

    public partial class ContentIndexRepository : BaseRepository<ContentIndex, InstanceEntities>, IContentIndexRepository
    {
        public ContentIndexRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(ContentIndex model)
        {
            return model.Id;
        }
	}

    public partial class ContentProductRepository : BaseRepository<ContentProduct, InstanceEntities>, IContentProductRepository
    {
        public ContentProductRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(ContentProduct model)
        {
            return model.Id;
        }
	}

    public partial class ProductRepository : BaseRepository<Product, InstanceEntities>, IProductRepository
    {
        public ProductRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(Product model)
        {
            return model.Id;
        }
	}

    public partial class ProductLanguageRepository : BaseRepository<ProductLanguage, InstanceEntities>, IProductLanguageRepository
    {
        public ProductLanguageRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(ProductLanguage model)
        {
            return model.Id;
        }
	}

    public partial class ServiceRepository : BaseRepository<Service, InstanceEntities>, IServiceRepository
    {
        public ServiceRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(Service model)
        {
            return model.Id;
        }
	}

    public partial class ServiceLanguageRepository : BaseRepository<ServiceLanguage, InstanceEntities>, IServiceLanguageRepository
    {
        public ServiceLanguageRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(ServiceLanguage model)
        {
            return model.Id;
        }
	}

    public partial class ContentServiceRepository : BaseRepository<ContentService, InstanceEntities>, IContentServiceRepository
    {
        public ContentServiceRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(ContentService model)
        {
            return model.Id;
        }
	}

    public partial class ContentServicePartitionRepository : BaseRepository<ContentServicePartition, InstanceEntities>, IContentServicePartitionRepository
    {
        public ContentServicePartitionRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(ContentServicePartition model)
        {
            return model.Id;
        }
	}

    public partial class ContentContactRepository : BaseRepository<ContentContact, InstanceEntities>, IContentContactRepository
    {
        public ContentContactRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(ContentContact model)
        {
            return model.Id;
        }
	}

    public partial class ContentNewsRepository : BaseRepository<ContentNews, InstanceEntities>, IContentNewsRepository
    {
        public ContentNewsRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(ContentNews model)
        {
            return model.Id;
        }
	}

    public partial class NewsRepository : BaseRepository<News, InstanceEntities>, INewsRepository
    {
        public NewsRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(News model)
        {
            return model.Id;
        }
	}

    public partial class NewsLanguageRepository : BaseRepository<NewsLanguage, InstanceEntities>, INewsLanguageRepository
    {
        public NewsLanguageRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(NewsLanguage model)
        {
            return model.Id;
        }
	}

    public partial class NewsLanguageImageRepository : BaseRepository<NewsLanguageImage, InstanceEntities>, INewsLanguageImageRepository
    {
        public NewsLanguageImageRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(NewsLanguageImage model)
        {
            return model.Id;
        }
	}

    public partial class NewsRelatedNewsRepository : BaseRepository<NewsRelatedNews, InstanceEntities>, INewsRelatedNewsRepository
    {
        public NewsRelatedNewsRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork)
            : base(unitOfWork)
        {

        }
		protected override int GetKeyId(NewsRelatedNews model)
        {
            return model.Id;
        }
	}
}