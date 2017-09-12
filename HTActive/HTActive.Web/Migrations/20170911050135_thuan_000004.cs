using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000004 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ContentProduct",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    ButtonReadMore = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Content = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Header1 = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Header1Content = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Header2 = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Header2Content = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Header3 = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Header3Content = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Language = table.Column<int>(type: "int", nullable: false),
                    Title = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContentProduct", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Product",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Priority = table.Column<int>(type: "int", nullable: false),
                    ProductType = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Product", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProductLanguage",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Description = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    DescriptionDetailHeader = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    DescriptionDetailText = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ImageAlt = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ImageDetailText = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ImageSrc = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Language = table.Column<int>(type: "int", nullable: true),
                    LinkAndroidStore = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    LinkIOSStore = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    LinkStoreContent = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    LinkStoreHeader = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    LinkWPStore = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ProductId = table.Column<int>(type: "int", nullable: true),
                    ReviewText = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    TitleTagForSEO = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    TitleText = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    TypeName = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    VideoDetailAlt = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    VideoDetailSrc = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    VideoDetailText = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductLanguage", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ProductLanguage_Product_ProductId",
                        column: x => x.ProductId,
                        principalTable: "Product",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ProductLanguageDescriptionDetail",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Content = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ProductLanguageId = table.Column<int>(type: "int", nullable: true),
                    Title = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductLanguageDescriptionDetail", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ProductLanguageDescriptionDetail_ProductLanguage_ProductLanguageId",
                        column: x => x.ProductLanguageId,
                        principalTable: "ProductLanguage",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ProductLanguageImageDetail",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Alt = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ProductLanguageId = table.Column<int>(type: "int", nullable: true),
                    Src = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductLanguageImageDetail", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ProductLanguageImageDetail_ProductLanguage_ProductLanguageId",
                        column: x => x.ProductLanguageId,
                        principalTable: "ProductLanguage",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ProductLanguageProductDetail",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Content = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Header = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Priority = table.Column<int>(type: "int", nullable: true),
                    ProductLanguageId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductLanguageProductDetail", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ProductLanguageProductDetail_ProductLanguage_ProductLanguageId",
                        column: x => x.ProductLanguageId,
                        principalTable: "ProductLanguage",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ProductLanguageReviewDetail",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Detail = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ImageUrl = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ProductLanguageId = table.Column<int>(type: "int", nullable: true),
                    RateDate = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    RateScore = table.Column<float>(type: "float", maxLength: 512, nullable: false),
                    Title = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductLanguageReviewDetail", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ProductLanguageReviewDetail_ProductLanguage_ProductLanguageId",
                        column: x => x.ProductLanguageId,
                        principalTable: "ProductLanguage",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ProductLanguage_ProductId",
                table: "ProductLanguage",
                column: "ProductId");

            migrationBuilder.CreateIndex(
                name: "IX_ProductLanguageDescriptionDetail_ProductLanguageId",
                table: "ProductLanguageDescriptionDetail",
                column: "ProductLanguageId");

            migrationBuilder.CreateIndex(
                name: "IX_ProductLanguageImageDetail_ProductLanguageId",
                table: "ProductLanguageImageDetail",
                column: "ProductLanguageId");

            migrationBuilder.CreateIndex(
                name: "IX_ProductLanguageProductDetail_ProductLanguageId",
                table: "ProductLanguageProductDetail",
                column: "ProductLanguageId");

            migrationBuilder.CreateIndex(
                name: "IX_ProductLanguageReviewDetail_ProductLanguageId",
                table: "ProductLanguageReviewDetail",
                column: "ProductLanguageId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ContentProduct");

            migrationBuilder.DropTable(
                name: "ProductLanguageDescriptionDetail");

            migrationBuilder.DropTable(
                name: "ProductLanguageImageDetail");

            migrationBuilder.DropTable(
                name: "ProductLanguageProductDetail");

            migrationBuilder.DropTable(
                name: "ProductLanguageReviewDetail");

            migrationBuilder.DropTable(
                name: "ProductLanguage");

            migrationBuilder.DropTable(
                name: "Product");
        }
    }
}
