using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace HTActive.Web.Migrations
{
    public partial class thuan_000008 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ContentContact",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Address = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Button = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ContactUs = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Content = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ErrorMessage = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    HTEmail = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Language = table.Column<int>(type: "int", nullable: true),
                    Loading = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Mail = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    MailHolder = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Message = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    MessageHolder = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Name = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    NameHolder = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Phone = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Received = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Skype = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Sorry = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    SorryMessage = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Subject = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    SubjectHolder = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Thanks = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    ThanksMessage = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true),
                    Title = table.Column<string>(type: "varchar(512)", maxLength: 512, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContentContact", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ContentContact");
        }
    }
}
