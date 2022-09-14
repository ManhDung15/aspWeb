using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using assignment1part1.Models;

namespace assignment1part1
{
    public partial class MtConfirmation : System.Web.UI.Page
    {
        private ListCartItems cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            var customer = (Customer)Session["Customer"];
            //message display in text box
            string message =
                "Contact information\n" +
                "    Email: " + customer.EmailAddress + "\n" +
                "    Name: " + customer.FullName + "\n" +
                "    Phone number: " + customer.Phone + "\n" +
                "Billing address\n" +
                "    Address: " + customer.Address + "\n" +
                "    Unit Number: " + customer.Unit + "\n" +
                "    Postal code: " + customer.Zip + "\n" +
                "Shipping address\n" +
                "    Address: " + customer.ShippingAddress + "\n" +
                "    Unit Number: " + customer.ShippingUnit + "\n" +
                "    Postal code: " + customer.ShippingZip + "\n" +
                "Credit Card\n" +
                "    Card Number: " + customer.CardNumber + "\n" +
                "    Name On Card: " + customer.NameOnCard + "\n" +
                "    Expiry Date: " + customer.ExpiryDate + "\n" +
                "    CVC: " + customer.CVC + "\n";

            txtData.Text = message;
            //get all customer information
            cart = ListCartItems.GetCart();
            if (!IsPostBack) //every time page loading it will bind data
                this.DisplayCart(); //display item in list box
        }
        private void DisplayCart()
        {
            //display item with list box
            lstbxItem.Items.Clear(); 
            CartItems item;
            for (int i = 0; i < cart.Count; i++) //for loop used to display item
            {
                item = cart[i];
                lstbxItem.Items.Add(item.Display());
            }
        }
    }
}