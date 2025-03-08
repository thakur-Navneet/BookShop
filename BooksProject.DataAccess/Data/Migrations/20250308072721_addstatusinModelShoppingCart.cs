using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BooksProject.DataAccess.Migrations
{
    public partial class addstatusinModelShoppingCart : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "ShoppingCarts",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Status",
                table: "ShoppingCarts");
        }
    }
}
