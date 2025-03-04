namespace BooksProject.Models.ViewModels
{
    public class HomeViewModel
    {
            public IEnumerable<Product> Products { get; set; }
            public IEnumerable<Blog> Blogs { get; set; }
    }
}