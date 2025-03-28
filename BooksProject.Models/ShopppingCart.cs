﻿using System.ComponentModel.DataAnnotations.Schema;

namespace BooksProject.Models
{
    public class ShopppingCart
    {
        public ShopppingCart()
        {
            Count =  1;
        }
        public int Id { get; set; }
        public string ApplicationUserId { get; set; }
        [ForeignKey("ApplicationUserId")]
        public ApplicationUser ApplicationUser { get; set; }
        public int ProductId { get; set; }
        [ForeignKey("ProductId")]
        public Product Product { get; set; }
        public int Count { get; set; }
        [NotMapped]
        public double Price { get; set; }
        public StatusShoppingCart Status { get; set; }
    }
}
