using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace assignment1part1.Models
{
    public class ListCartItems
    { //DAL files is used to pass data in the actual Database system
        private List<CartItems> cartItems;

        public ListCartItems()
        {
            cartItems = new List<CartItems>();
        }

        public int Count
        {
            get { return cartItems.Count; }
        }

        public CartItems this[int index]
        {
            get { return cartItems[index]; }
            set { cartItems[index] = value; }
        }

        public CartItems this[string id]
        {
            get
            {
                foreach (CartItems c in cartItems)
                    if (c.Product.ProductID == id) return c;
                return null;
            }
        }

        public static ListCartItems GetCart()
        {
            ListCartItems cart = (ListCartItems)HttpContext.Current.Session["Cart"];
            if (cart == null)
                HttpContext.Current.Session["Cart"] = new ListCartItems();
            return (ListCartItems)HttpContext.Current.Session["Cart"];
        }

        public void AddItem(Product product, int quantity)
        {
            CartItems c = new CartItems(product, quantity);
            cartItems.Add(c);
        }

        public void RemoveAt(int index)
        {
            cartItems.RemoveAt(index);
        }

        public void Clear()
        {
            cartItems.Clear();
        }
    }
}