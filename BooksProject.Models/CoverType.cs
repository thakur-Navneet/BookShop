using System.ComponentModel.DataAnnotations;

namespace BooksProject.Models
{
    public class CoverType
    {
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
    }
}
