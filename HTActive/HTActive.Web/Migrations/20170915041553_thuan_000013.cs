using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000013 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ServicePageTitle",
                table: "ContentServicePartition");

            migrationBuilder.AddColumn<string>(
                name: "ServicePageTitle",
                table: "ContentService",
                type: "varchar(512)",
                maxLength: 512,
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ServicePageTitle",
                table: "ContentService");

            migrationBuilder.AddColumn<string>(
                name: "ServicePageTitle",
                table: "ContentServicePartition",
                maxLength: 512,
                nullable: true);
        }
    }
}
