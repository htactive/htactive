using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000003 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ContentIndex",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    AboutUsContent = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    AboutUsLeftContent = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    AboutUsLeftSrc = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    AboutUsLeftSubContent = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    AboutUsLeftTitle = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    AboutUsLeftUrl = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    AboutUsTitle = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ButtonContact = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ButtonReadMore = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ContactContent = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ContactTitle = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    FeatureContent = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    FeatureTitle = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Language = table.Column<int>(type: "int", nullable: true),
                    PolicyContent = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    PolicyTitle = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    WhyChooseContent = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    WhyChooseTitle = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContentIndex", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ContentIndexAboutUsRight",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Content = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ContentIndexId = table.Column<int>(type: "int", nullable: true),
                    Icon = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Priority = table.Column<int>(type: "int", nullable: true),
                    Title = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContentIndexAboutUsRight", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ContentIndexAboutUsRight_ContentIndex_ContentIndexId",
                        column: x => x.ContentIndexId,
                        principalTable: "ContentIndex",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ContentIndexFeature",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Content = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ContentIndexId = table.Column<int>(type: "int", nullable: true),
                    Icon = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Priority = table.Column<int>(type: "int", nullable: true),
                    Title = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Url = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContentIndexFeature", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ContentIndexFeature_ContentIndex_ContentIndexId",
                        column: x => x.ContentIndexId,
                        principalTable: "ContentIndex",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ContentIndexTopSlide",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    ContentIndexId = table.Column<int>(type: "int", nullable: true),
                    MainImageAlt = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    MainImageSrc = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Priority = table.Column<int>(type: "int", nullable: true),
                    RightImageAlt = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    RightImageSrc = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    SlideContents = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    SlideFooter = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    SlideTitle = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContentIndexTopSlide", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ContentIndexTopSlide_ContentIndex_ContentIndexId",
                        column: x => x.ContentIndexId,
                        principalTable: "ContentIndex",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ContentIndexWhyChoose",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Content = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ContentIndexId = table.Column<int>(type: "int", nullable: true),
                    Priority = table.Column<int>(type: "int", nullable: true),
                    Src = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    SubTitle = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Title = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContentIndexWhyChoose", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ContentIndexWhyChoose_ContentIndex_ContentIndexId",
                        column: x => x.ContentIndexId,
                        principalTable: "ContentIndex",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ContentIndexAboutUsRight_ContentIndexId",
                table: "ContentIndexAboutUsRight",
                column: "ContentIndexId");

            migrationBuilder.CreateIndex(
                name: "IX_ContentIndexFeature_ContentIndexId",
                table: "ContentIndexFeature",
                column: "ContentIndexId");

            migrationBuilder.CreateIndex(
                name: "IX_ContentIndexTopSlide_ContentIndexId",
                table: "ContentIndexTopSlide",
                column: "ContentIndexId");

            migrationBuilder.CreateIndex(
                name: "IX_ContentIndexWhyChoose_ContentIndexId",
                table: "ContentIndexWhyChoose",
                column: "ContentIndexId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ContentIndexAboutUsRight");

            migrationBuilder.DropTable(
                name: "ContentIndexFeature");

            migrationBuilder.DropTable(
                name: "ContentIndexTopSlide");

            migrationBuilder.DropTable(
                name: "ContentIndexWhyChoose");

            migrationBuilder.DropTable(
                name: "ContentIndex");
        }
    }
}
