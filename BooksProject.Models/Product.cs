﻿using System.ComponentModel.DataAnnotations;
namespace BooksProject.Models
{
    public class Product
    {
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        [Display(Name = "Author")]
        public int AuthorId { get; set; }
        public Author Author { get; set; }
        [Required]
        public string ISBN { get; set; }
        [Required]
        [Range(0, 1000)]
        public double ListPrice { get; set; }
        [Required]
        [Range(0, 1000)]
        public double Price { get; set; }
        [Required]
        [Range(0, 1000)]
        public double Price50 { get; set; }
        [Required]
        [Range(0, 1000)]
        public double Price100 { get; set; }
        [Display(Name = "Featured Image")]
        public string ImageFeatured { get; set; }
        [Display(Name = "First Image")]
        public string ImageFirst { get; set; }
        [Display(Name = "Second Image")]
        public string ImageSecond { get; set; }
        [Required]
        [Display(Name = "Category")]
        public int CategoryId { get; set; }
        public Category Category { get; set; }
        [Required]
        [Display(Name = "Cover Type")]
        public int CoverTypeId { get; set; }
        public CoverType CoverType { get; set; }
    }
}
