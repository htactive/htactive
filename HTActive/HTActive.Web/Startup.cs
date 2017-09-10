using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.SpaServices.Webpack;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;
using HTActive.Entities;
using HTActive.Repository;
using HTActive.Core.Repository;
using Microsoft.AspNetCore.Authorization;
using HTActive.Web.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication.Facebook;
using Microsoft.AspNetCore.Authentication.OAuth;
using Microsoft.AspNetCore.Authentication;
using System.Net;

namespace HTActive_Web
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddAuthentication()
                .AddFacebook(facebookOptions =>
                {
                    facebookOptions.AppId = Configuration["Authentication:Facebook:AppId"];
                    facebookOptions.AppSecret = Configuration["Authentication:Facebook:AppSecret"];
                    facebookOptions.SignInScheme = "ExternalCookiesAuthentication";
                    facebookOptions.Events = new CustomOAuthEvents();
                })
                .AddGoogle(googleOptions =>
                {
                    googleOptions.ClientId = Configuration["Authentication:Google:ClientId"];
                    googleOptions.ClientSecret = Configuration["Authentication:Google:ClientSecret"];
                    googleOptions.SignInScheme = "ExternalCookiesAuthentication";
                });
            services.AddMvc();
            services.AddScoped<IAuthorizationHandler, HTAuthorizationHandler>();
            services.AddScoped(opt =>
            {
                var optionBuilder = new DbContextOptionsBuilder<InstanceEntities>();
                optionBuilder.UseMySql(Configuration.GetConnectionString("HTAConnection"),
                b => b.MigrationsAssembly("HTActive.Web"));
                return optionBuilder.Options;
            });
            services.AddScoped<InstanceEntities>();
            services.AddScoped<InstanceUnitOfWork>();
            services.AddScoped<InstanceRepository>();
            services.AddScoped<IBaseUnitOfWork<InstanceEntities>, InstanceUnitOfWork>();
            RegisterServiceHelper.RegisterRepository(services);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseWebpackDevMiddleware(new WebpackDevMiddlewareOptions
                {
                    HotModuleReplacement = true,
                    ReactHotModuleReplacement = true
                });
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }

            app.UseStaticFiles();
            
            app.UseMvc(routes =>
            {
                routes.MapRoute("home", "{l:regex(^(|vi|en)$)}", new {
                    controller = "Home", action="Index"
                });
                routes.MapRoute("products_l", "{l:regex(^(vi|en)$)}/products", new
                {
                    controller = "Product",
                    action = "Index"
                });
                routes.MapRoute("products", "products", new
                {
                    controller = "Product",
                    action = "Index"
                });

                routes.MapRoute("product_detail_l", "{l:regex(^(vi|en)$)}/products/{id}", new
                {
                    controller = "Product",
                    action = "ProductDetail"
                });
                routes.MapRoute("product_detail", "products/{id}", new
                {
                    controller = "Product",
                    action = "ProductDetail"
                });

                routes.MapRoute(name: "vi",
                    template: "vi/{controller}/{action}/{id?}");
                routes.MapRoute(name: "en",
                    template: "en/{controller=Home}/{action=Index}/{id?}");
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");

                //routes.MapSpaFallbackRoute(
                //    name: "spa-fallback",
                //    defaults: new { controller = "Home", action = "Index" });
            });
        }
    }
    public class CustomOAuthEvents : OAuthEvents
    {
        public override Task RemoteFailure(RemoteFailureContext context)
        {
            context.HandleResponse();
            context.Response.Redirect("/account/login");
            return base.RemoteFailure(context);
        }
    }
}
