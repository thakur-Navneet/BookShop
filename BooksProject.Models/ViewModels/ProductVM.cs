using Microsoft.AspNetCore.Mvc.Rendering;

namespace BooksProject.Models.ViewModels
{
    public class ProductVM
    {
        public Product Product { get; set; }
        //public List<Product> ProductForHome { get; set; }
        public IEnumerable<SelectListItem> CategoryList { get; set; }
        public IEnumerable<SelectListItem> CoverTypeList { get; set; }
        public IEnumerable<SelectListItem> AuthorList { get; set; }
    }
}
