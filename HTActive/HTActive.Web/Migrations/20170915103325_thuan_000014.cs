using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000014 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ContentNews",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    ByText = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Language = table.Column<int>(type: "int", nullable: false),
                    ReadMoreText = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContentNews", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "News",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Priority = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_News", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "NewsLanguage",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Author = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    CoverSource = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    CoverType = table.Column<int>(type: "int", nullable: true),
                    CreatedDate = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    Description = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Html = table.Column<string>(type: "varchar(4000)", maxLength: 4000, nullable: true),
                    Language = table.Column<int>(type: "int", nullable: true),
                    NewsId = table.Column<int>(type: "int", nullable: true),
                    Title = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_NewsLanguage", x => x.Id);
                    table.ForeignKey(
                        name: "FK_NewsLanguage_News_NewsId",
                        column: x => x.NewsId,
                        principalTable: "News",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "NewsLanguageImage",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Alt = table.Column<string>(type: "longtext", nullable: true),
                    NewsLanguageId = table.Column<int>(type: "int", nullable: false),
                    Priority = table.Column<int>(type: "int", nullable: true),
                    Src = table.Column<string>(type: "longtext", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_NewsLanguageImage", x => x.Id);
                    table.ForeignKey(
                        name: "FK_NewsLanguageImage_NewsLanguage_NewsLanguageId",
                        column: x => x.NewsLanguageId,
                        principalTable: "NewsLanguage",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_NewsLanguage_NewsId",
                table: "NewsLanguage",
                column: "NewsId");

            migrationBuilder.CreateIndex(
                name: "IX_NewsLanguageImage_NewsLanguageId",
                table: "NewsLanguageImage",
                column: "NewsLanguageId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ContentNews");

            migrationBuilder.DropTable(
                name: "NewsLanguageImage");

            migrationBuilder.DropTable(
                name: "NewsLanguage");

            migrationBuilder.DropTable(
                name: "News");
        }
    }
}
