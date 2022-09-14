using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions; // tkl
using assignment1part1.Models;

namespace assignment1part1
{
    public partial class MtPayment : System.Web.UI.Page
    {
        private Customer customer;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None; //check validator fields
            if (!IsPostBack)
            {
                customer = (Customer)Session["Customer"]; 
                LoadCustomerData();
            }
        }
        protected void btnCheckOut_Click(object sender, EventArgs e)
        { // if valid customer data will be passed to Customer.cs
            if (IsValid)
            {
                GetCustomerData();
                Response.Redirect("~/MtConfirmation.aspx");
            }
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session.Remove("Cart");
            Session.Remove("Customer");
            Response.Redirect("~/MtOrder.aspx");
        }
        private void LoadCustomerData()
        {
            if (customer != null)
            { //get data from textbox and load page
                txtFullName.Text = customer.FullName;
                txtEmail1.Text = customer.EmailAddress;
                txtPhone.Text = customer.Phone;
                txtAddress.Text = customer.Address;
                txtbxUnit.Text = customer.Unit;
                txtZip.Text = customer.Zip;
                txtShipAddress.Text = customer.ShippingAddress;
                txtbxShipUnit.Text = customer.ShippingUnit;
                txtShipZip.Text = customer.ShippingZip;
                txtbxCardNum.Text = customer.CardNumber;
                txtbxNOC.Text = customer.NameOnCard;
                txtbxExpiry.Text = customer.ExpiryDate;
                txtbxCVC.Text = customer.CVC;
            }
        }
        private void GetCustomerData()
        { //get customer data and pass to Customer.cs
            if (customer == null) customer = new Customer();
            customer.FullName = txtFullName.Text;
            customer.EmailAddress = txtEmail1.Text;
            customer.Phone = txtPhone.Text;
            customer.Address = txtAddress.Text;
            customer.Unit = txtbxUnit.Text;
            customer.Zip = txtZip.Text;
            customer.CardNumber = txtbxCardNum.Text;
            customer.NameOnCard = txtbxNOC.Text;
            customer.ExpiryDate = txtbxExpiry.Text;
            customer.CVC = txtbxCVC.Text;

            if (chkSameAsBilling.Checked)
            {
                customer.ShippingAddress = customer.Address;
                customer.ShippingUnit = customer.Unit;
                customer.ShippingZip = customer.Zip;
            }
            else
            {
                customer.ShippingAddress = txtShipAddress.Text;
                customer.ShippingUnit = txtbxShipUnit.Text;
                customer.ShippingZip = txtShipZip.Text;
            }
            Session["Customer"] = customer;
        }
        protected void chkSameAsBilling_CheckedChanged(object sender, EventArgs e)
        { //if checkbox is checked, billing will be same as address
            rfvShipAddress.Enabled = !rfvShipAddress.Enabled;
            rfvShipUnit.Enabled = !rfvShipUnit.Enabled;
            rfvShipZip.Enabled = !rfvShipZip.Enabled;

            txtShipAddress.Enabled = !txtShipAddress.Enabled;
            txtbxShipUnit.Enabled = !txtbxShipUnit.Enabled;
            txtShipZip.Enabled = !txtShipZip.Enabled;
        }
    }
}