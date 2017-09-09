using HTActive.Entities;
using HTActive_Web;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HTActive.Web
{
    public class TemporaryDbContextFactory : IDesignTimeDbContextFactory<InstanceEntities>
    {
        public InstanceEntities CreateDbContext(string[] args)
        {
            return Program.BuildWebHost(args).Services.CreateScope().ServiceProvider
             .GetRequiredService<InstanceEntities>();
        }
    }
}
