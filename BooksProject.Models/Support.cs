using System.ComponentModel.DataAnnotations;

namespace BooksProject.Models
{
    public class Support
    {
        public int Id { get; set; }
        [Required]
        public string Question { get; set; }
        [Required]
        public string Answer { get; set; }
    }
}
