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
        }
    }
}
