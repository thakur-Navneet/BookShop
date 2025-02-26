using System.ComponentModel.DataAnnotations;

namespace BooksProject.Models
{
    public class Blog
    {
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public string Description { get; set; }
        [Display(Name ="Blog Image")]
        public string BlogImage { get; set; }
    }
}
