using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebLinhKienDienTu.Migrations
{
    public partial class typecheckout : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "TypeCheckout",
                table: "Orders",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "TypeCheckout",
                table: "Orders");
        }
    }
}
