using System.ComponentModel.DataAnnotations;

namespace BooksProject.Models
{
    public class Author
    {
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public string Description { get; set; }
        [Display(Name = "Author Image")]
        public string AuthorImage { get; set; }


    }
}
