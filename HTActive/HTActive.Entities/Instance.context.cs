using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Entities
{
    public partial class InstanceEntities : DbContext
    {
        public InstanceEntities(DbContextOptions<InstanceEntities> options) : base(options)
        {
        }
        public DbSet<Claim> Claim { get; set; }
        public DbSet<Image> Image { get; set; }
        public DbSet<Role> Role { get; set; }
        public DbSet<RoleClaim> RoleClaim { get; set; }
        public DbSet<User> User { get; set; }
        public DbSet<UserLoginToken> UserLoginToken { get; set; }
        public DbSet<UserProfile> UserProfile { get; set; }
        public DbSet<UserRole> UserRole { get; set; }
        public DbSet<ContentFooter> ContentFooter { get; set; }
        public DbSet<ContentMenu> ContentMenu { get; set; }
        public DbSet<ContentIndex> ContentIndex { get; set; }
        public DbSet<ContentIndexAboutUsRight> ContentIndexAboutUsRight { get; set; }
        public DbSet<ContentIndexFeature> ContentIndexFeature { get; set; }
        public DbSet<ContentIndexTopSlide> ContentIndexTopSlide { get; set; }
        public DbSet<ContentIndexWhyChoose> ContentIndexWhyChoose { get; set; }
        public DbSet<ContentProduct> ContentProduct { get; set; }
        public DbSet<Product> Product { get; set; }
        public DbSet<ProductLanguage> ProductLanguage { get; set; }
        public DbSet<ProductLanguageDescriptionDetail> ProductLanguageDescriptionDetail { get; set; }
        public DbSet<ProductLanguageImageDetail> ProductLanguageImageDetail { get; set; }
        public DbSet<ProductLanguageProductDetail> ProductLanguageProductDetail { get; set; }
        public DbSet<ProductLanguageReviewDetail> ProductLanguageReviewDetail { get; set; }
        public DbSet<ProductLanguageLinkStore> ProductLanguageLinkStore { get; set; }
        public DbSet<Service> Service { get; set; }
        public DbSet<ServiceLanguage> ServiceLanguage { get; set; }
        public DbSet<ContentService> ContentService { get; set; }
        public DbSet<ContentServicePartition> ContentServicePartition { get; set; }
        public DbSet<ContentContact> ContentContact { get; set; }
        public DbSet<ContentNews> ContentNews { get; set; }
        public DbSet<News> News { get; set; }
        public DbSet<NewsLanguage> NewsLanguage { get; set; }
        public DbSet<NewsLanguageImage> NewsLanguageImage { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>()
                .HasMany(x => x.UserProfiles)
                .WithOne(x => x.User)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<User>()
                .HasMany(x => x.UserRoles)
                .WithOne(x => x.User)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<User>()
                .HasMany(x => x.UserLoginTokens)
                .WithOne(x => x.User)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<Claim>()
                .HasMany(x => x.RoleClaims)
                .WithOne(x => x.Claim)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<Role>()
                .HasMany(x => x.RoleClaims)
                .WithOne(x => x.Role)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<ContentFooter>().
                HasMany(x => x.ContentMenus)
                .WithOne(x => x.ContentFooter)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<ContentIndex>().
                HasMany(x => x.Features)
                .WithOne(x => x.ContentIndex)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<ContentIndex>().
                HasMany(x => x.WhyChooseReasons)
                .WithOne(x => x.ContentIndex)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<ContentIndex>().
                HasMany(x => x.AboutUsRights)
                .WithOne(x => x.ContentIndex)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<ContentIndex>().
                HasMany(x => x.TopSlides)
                .WithOne(x => x.ContentIndex)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<Product>().
                HasMany(x => x.ProductLanguages)
                .WithOne(x => x.Product)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<ProductLanguage>().
                HasMany(x => x.ProductLanguageDescriptionDetails)
                .WithOne(x => x.ProductLanguage)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<ProductLanguage>().
                HasMany(x => x.ProductLanguageProductDetails)
                .WithOne(x => x.ProductLanguage)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<ProductLanguage>().
                HasMany(x => x.ImageDetails)
                .WithOne(x => x.ProductLanguage)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<ProductLanguage>().
                HasMany(x => x.ProductLanguageReviewDetails)
                .WithOne(x => x.ProductLanguage)
                .OnDelete(DeleteBehavior.Cascade);
            modelBuilder.Entity<ProductLanguage>().
                HasMany(x => x.LinkStores)
                .WithOne(x => x.ProductLanguage)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<Service>().
                HasMany(x => x.ServiceLanguages)
                .WithOne(x => x.Service)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<ContentService>().
                HasMany(x => x.ContentServicePartitions)
                .WithOne(x => x.ContentService)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<News>().
                HasMany(x => x.NewsLanguages)
                .WithOne(x => x.News)
                .OnDelete(DeleteBehavior.Cascade);

            modelBuilder.Entity<NewsLanguage>().
                HasMany(x => x.NewsLanguageImages)
                .WithOne(x => x.NewsLanguage)
                .OnDelete(DeleteBehavior.Cascade);

        }
    }
}
