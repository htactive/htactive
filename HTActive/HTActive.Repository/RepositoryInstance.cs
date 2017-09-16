
using HTActive.Entities;
using Microsoft.Extensions.DependencyInjection;
using HTActive.Core.Repository;
using System;

namespace HTActive.Repository
{
    public class InstanceUnitOfWork : BaseUnitOfWork<InstanceEntities>
    {
        public InstanceUnitOfWork(InstanceEntities entity)
            : base(entity)
        {
        }
    }
    public class InstanceRepository
    {
	    public IServiceProvider ServiceProvider{get;private set;}
		public IBaseUnitOfWork<InstanceEntities> InstanceUnitOfWork{get;private set;}
        public InstanceRepository(IBaseUnitOfWork<InstanceEntities> unitOfWork, IServiceProvider _serviceProvider)
        {
			this.InstanceUnitOfWork = unitOfWork;
			this.ServiceProvider = _serviceProvider;
		}
        public void Commit()
        {
            this.InstanceUnitOfWork.Commit();
        }
        #region Repositories
        private IClaimRepository _ClaimRepository;
        public IClaimRepository ClaimRepository 
		{ 
			get
			{
				return _ClaimRepository ?? 
				(_ClaimRepository = ServiceProvider.GetService<IClaimRepository>());
			}
		}
		private IImageRepository _ImageRepository;
        public IImageRepository ImageRepository 
		{ 
			get
			{
				return _ImageRepository ?? 
				(_ImageRepository = ServiceProvider.GetService<IImageRepository>());
			}
		}
		private IRoleRepository _RoleRepository;
        public IRoleRepository RoleRepository 
		{ 
			get
			{
				return _RoleRepository ?? 
				(_RoleRepository = ServiceProvider.GetService<IRoleRepository>());
			}
		}
		private IRoleClaimRepository _RoleClaimRepository;
        public IRoleClaimRepository RoleClaimRepository 
		{ 
			get
			{
				return _RoleClaimRepository ?? 
				(_RoleClaimRepository = ServiceProvider.GetService<IRoleClaimRepository>());
			}
		}
		private IUserRepository _UserRepository;
        public IUserRepository UserRepository 
		{ 
			get
			{
				return _UserRepository ?? 
				(_UserRepository = ServiceProvider.GetService<IUserRepository>());
			}
		}
		private IUserLoginTokenRepository _UserLoginTokenRepository;
        public IUserLoginTokenRepository UserLoginTokenRepository 
		{ 
			get
			{
				return _UserLoginTokenRepository ?? 
				(_UserLoginTokenRepository = ServiceProvider.GetService<IUserLoginTokenRepository>());
			}
		}
		private IUserProfileRepository _UserProfileRepository;
        public IUserProfileRepository UserProfileRepository 
		{ 
			get
			{
				return _UserProfileRepository ?? 
				(_UserProfileRepository = ServiceProvider.GetService<IUserProfileRepository>());
			}
		}
		private IUserRoleRepository _UserRoleRepository;
        public IUserRoleRepository UserRoleRepository 
		{ 
			get
			{
				return _UserRoleRepository ?? 
				(_UserRoleRepository = ServiceProvider.GetService<IUserRoleRepository>());
			}
		}
		private IContentFooterRepository _ContentFooterRepository;
        public IContentFooterRepository ContentFooterRepository 
		{ 
			get
			{
				return _ContentFooterRepository ?? 
				(_ContentFooterRepository = ServiceProvider.GetService<IContentFooterRepository>());
			}
		}
		private IContentIndexRepository _ContentIndexRepository;
        public IContentIndexRepository ContentIndexRepository 
		{ 
			get
			{
				return _ContentIndexRepository ?? 
				(_ContentIndexRepository = ServiceProvider.GetService<IContentIndexRepository>());
			}
		}
		private IContentProductRepository _ContentProductRepository;
        public IContentProductRepository ContentProductRepository 
		{ 
			get
			{
				return _ContentProductRepository ?? 
				(_ContentProductRepository = ServiceProvider.GetService<IContentProductRepository>());
			}
		}
		private IProductRepository _ProductRepository;
        public IProductRepository ProductRepository 
		{ 
			get
			{
				return _ProductRepository ?? 
				(_ProductRepository = ServiceProvider.GetService<IProductRepository>());
			}
		}
		private IProductLanguageRepository _ProductLanguageRepository;
        public IProductLanguageRepository ProductLanguageRepository 
		{ 
			get
			{
				return _ProductLanguageRepository ?? 
				(_ProductLanguageRepository = ServiceProvider.GetService<IProductLanguageRepository>());
			}
		}
		private IServiceRepository _ServiceRepository;
        public IServiceRepository ServiceRepository 
		{ 
			get
			{
				return _ServiceRepository ?? 
				(_ServiceRepository = ServiceProvider.GetService<IServiceRepository>());
			}
		}
		private IServiceLanguageRepository _ServiceLanguageRepository;
        public IServiceLanguageRepository ServiceLanguageRepository 
		{ 
			get
			{
				return _ServiceLanguageRepository ?? 
				(_ServiceLanguageRepository = ServiceProvider.GetService<IServiceLanguageRepository>());
			}
		}
		private IContentServiceRepository _ContentServiceRepository;
        public IContentServiceRepository ContentServiceRepository 
		{ 
			get
			{
				return _ContentServiceRepository ?? 
				(_ContentServiceRepository = ServiceProvider.GetService<IContentServiceRepository>());
			}
		}
		private IContentServicePartitionRepository _ContentServicePartitionRepository;
        public IContentServicePartitionRepository ContentServicePartitionRepository 
		{ 
			get
			{
				return _ContentServicePartitionRepository ?? 
				(_ContentServicePartitionRepository = ServiceProvider.GetService<IContentServicePartitionRepository>());
			}
		}
		private IContentContactRepository _ContentContactRepository;
        public IContentContactRepository ContentContactRepository 
		{ 
			get
			{
				return _ContentContactRepository ?? 
				(_ContentContactRepository = ServiceProvider.GetService<IContentContactRepository>());
			}
		}
		private IContentNewsRepository _ContentNewsRepository;
        public IContentNewsRepository ContentNewsRepository 
		{ 
			get
			{
				return _ContentNewsRepository ?? 
				(_ContentNewsRepository = ServiceProvider.GetService<IContentNewsRepository>());
			}
		}
		private INewsRepository _NewsRepository;
        public INewsRepository NewsRepository 
		{ 
			get
			{
				return _NewsRepository ?? 
				(_NewsRepository = ServiceProvider.GetService<INewsRepository>());
			}
		}
		private INewsLanguageRepository _NewsLanguageRepository;
        public INewsLanguageRepository NewsLanguageRepository 
		{ 
			get
			{
				return _NewsLanguageRepository ?? 
				(_NewsLanguageRepository = ServiceProvider.GetService<INewsLanguageRepository>());
			}
		}
		private INewsLanguageImageRepository _NewsLanguageImageRepository;
        public INewsLanguageImageRepository NewsLanguageImageRepository 
		{ 
			get
			{
				return _NewsLanguageImageRepository ?? 
				(_NewsLanguageImageRepository = ServiceProvider.GetService<INewsLanguageImageRepository>());
			}
		}
		private INewsRelatedNewsRepository _NewsRelatedNewsRepository;
        public INewsRelatedNewsRepository NewsRelatedNewsRepository 
		{ 
			get
			{
				return _NewsRelatedNewsRepository ?? 
				(_NewsRelatedNewsRepository = ServiceProvider.GetService<INewsRelatedNewsRepository>());
			}
		}
		#endregion
    }
	
    public static class RegisterServiceHelper
    {
        public static void RegisterRepository(IServiceCollection services)
        {
			services.AddScoped<IClaimRepository, ClaimRepository>();
			services.AddScoped<IImageRepository, ImageRepository>();
			services.AddScoped<IRoleRepository, RoleRepository>();
			services.AddScoped<IRoleClaimRepository, RoleClaimRepository>();
			services.AddScoped<IUserRepository, UserRepository>();
			services.AddScoped<IUserLoginTokenRepository, UserLoginTokenRepository>();
			services.AddScoped<IUserProfileRepository, UserProfileRepository>();
			services.AddScoped<IUserRoleRepository, UserRoleRepository>();
			services.AddScoped<IContentFooterRepository, ContentFooterRepository>();
			services.AddScoped<IContentIndexRepository, ContentIndexRepository>();
			services.AddScoped<IContentProductRepository, ContentProductRepository>();
			services.AddScoped<IProductRepository, ProductRepository>();
			services.AddScoped<IProductLanguageRepository, ProductLanguageRepository>();
			services.AddScoped<IServiceRepository, ServiceRepository>();
			services.AddScoped<IServiceLanguageRepository, ServiceLanguageRepository>();
			services.AddScoped<IContentServiceRepository, ContentServiceRepository>();
			services.AddScoped<IContentServicePartitionRepository, ContentServicePartitionRepository>();
			services.AddScoped<IContentContactRepository, ContentContactRepository>();
			services.AddScoped<IContentNewsRepository, ContentNewsRepository>();
			services.AddScoped<INewsRepository, NewsRepository>();
			services.AddScoped<INewsLanguageRepository, NewsLanguageRepository>();
			services.AddScoped<INewsLanguageImageRepository, NewsLanguageImageRepository>();
			services.AddScoped<INewsRelatedNewsRepository, NewsRelatedNewsRepository>();
		}
    }
}