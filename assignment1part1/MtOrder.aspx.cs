using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using assignment1part1.Models;

namespace assignment1part1
{
    public partial class MtOrder : System.Web.UI.Page
    {
        private Product selectedProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None; //for validation field
            //bind dropdown on first load; get and show product data on every load   
            if (!IsPostBack) ddlProducts.DataBind();  //every time page loading it will bind data
            selectedProduct = this.GetSelectedProduct(); //get selectedproduct function
            lblName.Text = selectedProduct.ProductName; //display product when choosing from ddl
            lblDescription.Text = selectedProduct.Description;
            lblPrice.Text = selectedProduct.UnitPrice.ToString("c") + " each";
            imgProduct.ImageUrl = "images/products/" + selectedProduct.ImageFile;
        }
        private Product GetSelectedProduct()
        {
            //get row from AccessDataSource based on value in dropdownlist
            DataView productsTable = (DataView) //create temp view
                SqlDataSource1.Select(DataSourceSelectArguments.Empty); //make empty view
            productsTable.RowFilter =
                "ProductID = '" + ddlProducts.SelectedValue + "'";
            DataRowView row = productsTable[0]; //filter the name

            //create a new product object and load with data from row
            Product p = new Product(); //store all local variables
            p.ProductID = row["ProductID"].ToString();
            p.ProductName = row["ProductName"].ToString();
            p.Description = row["Description"].ToString();
            p.UnitPrice = (decimal)row["UnitPrice"];
            p.ImageFile = row["ImageFile"].ToString();
            return p;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //get cart from session and selected item from cart
                ListCartItems cart = ListCartItems.GetCart();
                CartItems cartItem = cart[selectedProduct.ProductID];

                //if item isn’t in cart, add it; otherwise, increase its quantity
                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct,
                                 Convert.ToInt32(txtbxQuantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtbxQuantity.Text));
                }
                Response.Redirect("MtCart.aspx");
            }
        }
    }
}