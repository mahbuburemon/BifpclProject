using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BifpclProject.Migrations
{
    /// <inheritdoc />
    public partial class agsf : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Dept_Name",
                table: "TblNotices",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Dept_Name",
                table: "TblNotices");
        }
    }
}
