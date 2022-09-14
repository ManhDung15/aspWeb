using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace assignment1part1.Models
{
    public class CartItems
    {
        
        //DAL files is used to pass data in the actual Database system
        public CartItems() { }

        public CartItems(Product product, int quantity)
        {
            this.Product = product;
            this.Quantity = quantity;
        }

        public Product Product { get; set; }
        public int Quantity { get; set; }

        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }
        public Product UnitPrice{ get; set; }
        
        public string Display()
        {
            string displayString = string.Format("{0} ({1} at {2})",
                Product.ProductName,
                Quantity.ToString(),
                Product.UnitPrice.ToString("c")
            );
            return displayString;
        }
        
    }

}