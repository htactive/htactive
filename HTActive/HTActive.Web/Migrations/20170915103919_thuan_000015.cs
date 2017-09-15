using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000015 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "NewsPageTitle",
                table: "ContentNews",
                type: "varchar(512)",
                maxLength: 512,
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "NewsPageTitle",
                table: "ContentNews");
        }
    }
}
