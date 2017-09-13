using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000010 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ProductLanguageLinkStore",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Link = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ProductLanguageId = table.Column<int>(type: "int", nullable: true),
                    Text = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductLanguageLinkStore", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ProductLanguageLinkStore_ProductLanguage_ProductLanguageId",
                        column: x => x.ProductLanguageId,
                        principalTable: "ProductLanguage",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ProductLanguageLinkStore_ProductLanguageId",
                table: "ProductLanguageLinkStore",
                column: "ProductLanguageId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ProductLanguageLinkStore");
        }
    }
}
