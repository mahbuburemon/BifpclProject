using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BifpclProject.Migrations
{
    /// <inheritdoc />
    public partial class sdfj : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "TblDepartments",
                columns: table => new
                {
                    DeptId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Dept_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Dept_Code = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TblDepartments", x => x.DeptId);
                });

            migrationBuilder.CreateTable(
                name: "TblNotices",
                columns: table => new
                {
                    NoticeId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    FilePath = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DeptId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TblNotices", x => x.NoticeId);
                    table.ForeignKey(
                        name: "FK_TblNotices_TblDepartments_DeptId",
                        column: x => x.DeptId,
                        principalTable: "TblDepartments",
                        principalColumn: "DeptId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_TblNotices_DeptId",
                table: "TblNotices",
                column: "DeptId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "TblNotices");

            migrationBuilder.DropTable(
                name: "TblDepartments");
        }
    }
}
