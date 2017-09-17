using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000021 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CreatedDate",
                table: "NewsLanguage");

            migrationBuilder.AddColumn<DateTime>(
                name: "CreatedDate",
                table: "News",
                type: "datetime(6)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CreatedDate",
                table: "News");

            migrationBuilder.AddColumn<DateTime>(
                name: "CreatedDate",
                table: "NewsLanguage",
                nullable: true);
        }
    }
}
