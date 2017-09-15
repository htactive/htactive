using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000012 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "ServicePageTitle",
                table: "ContentServicePartition",
                type: "varchar(512)",
                maxLength: 512,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ProductPageTitle",
                table: "ContentProduct",
                type: "varchar(512)",
                maxLength: 512,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "HomePageTitle",
                table: "ContentIndex",
                type: "varchar(512)",
                maxLength: 512,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ContactPageTitle",
                table: "ContentContact",
                type: "varchar(512)",
                maxLength: 512,
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ServicePageTitle",
                table: "ContentServicePartition");

            migrationBuilder.DropColumn(
                name: "ProductPageTitle",
                table: "ContentProduct");

            migrationBuilder.DropColumn(
                name: "HomePageTitle",
                table: "ContentIndex");

            migrationBuilder.DropColumn(
                name: "ContactPageTitle",
                table: "ContentContact");
        }
    }
}
