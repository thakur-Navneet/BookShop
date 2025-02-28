namespace BooksProject.Models.ViewModels
{
    public class ShoppingCartVM
    {
        public IEnumerable<ShopppingCart> ListCart { get; set; }
        public OrderHeader OrderHeader { get; set; }
    }
}
