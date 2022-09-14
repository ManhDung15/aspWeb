using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using assignment1part1.Models;

namespace assignment1part1
{
    public partial class MtCart : System.Web.UI.Page
    {
        private ListCartItems cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            cart = ListCartItems.GetCart();
            if (!IsPostBack)
                this.DisplayCart();
        }
        private void DisplayCart() ///funtion display cart to display item was bought in order page, get by cartItems models
        {
            lstbxCart.Items.Clear();
            CartItems item;
            for (int i = 0; i < cart.Count; i++) //for loop used to display item
            {
                item = cart[i];
                lstbxCart.Items.Add(item.Display());
            }
        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            if (cart.Count > 0) 
            {
                if (lstbxCart.SelectedIndex > -1)
                {
                    cart.RemoveAt(lstbxCart.SelectedIndex); //remove selected item
                    this.DisplayCart();
                }
                else
                {
                    lblMessage.Text = "Please select the item you want to remove.";
                }
            }
        }
        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            if (cart.Count > 0)
            {
                cart.Clear(); //clear everything in list box
                lstbxCart.Items.Clear();
            }
        }
        protected void btnCheck_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/MtPayment.aspx"); //redirect to payment
        }
    }
}