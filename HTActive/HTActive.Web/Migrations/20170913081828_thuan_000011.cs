using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000011 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "LinkAndroidStore",
                table: "ProductLanguage");

            migrationBuilder.DropColumn(
                name: "LinkIOSStore",
                table: "ProductLanguage");

            migrationBuilder.DropColumn(
                name: "LinkWPStore",
                table: "ProductLanguage");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "LinkAndroidStore",
                table: "ProductLanguage",
                maxLength: 512,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "LinkIOSStore",
                table: "ProductLanguage",
                maxLength: 512,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "LinkWPStore",
                table: "ProductLanguage",
                maxLength: 512,
                nullable: true);
        }
    }
}
