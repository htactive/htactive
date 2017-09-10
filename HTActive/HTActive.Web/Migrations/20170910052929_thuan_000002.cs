using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000002 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ContentFooter",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    AboutUsHref = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    AboutUsText = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Address = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Address2 = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Content1 = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    CopyRight = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Email = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Facebook = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Flickr = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    GooglePlus = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Language = table.Column<int>(type: "int", nullable: true),
                    LinkedIn = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Mobile = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Phone = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Pinterest = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Skype = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Slogan = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Twitter = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    YouTube = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContentFooter", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ContentMenu",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    ContentFooterId = table.Column<int>(type: "int", nullable: true),
                    Link = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Priority = table.Column<int>(type: "int", nullable: true),
                    Tab = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Text = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContentMenu", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ContentMenu_ContentFooter_ContentFooterId",
                        column: x => x.ContentFooterId,
                        principalTable: "ContentFooter",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ContentMenu_ContentFooterId",
                table: "ContentMenu",
                column: "ContentFooterId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ContentMenu");

            migrationBuilder.DropTable(
                name: "ContentFooter");
        }
    }
}
