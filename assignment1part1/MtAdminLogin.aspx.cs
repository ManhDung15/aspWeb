using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1part1
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            
            try //identify the error when login with try catch block
            {
                string adminAccount = "admin01"; //account and pass of admin
                string adminPass = "admin123";
                if (txtbxAccount.Text == adminAccount && txtbxPassword.Text == adminPass) //if else condition to check admin
                {
                    lblCheck.Text = "Correct Admin Account";
                    Response.Redirect("MtManagement.aspx"); // go to management pageg if correct
                }
                else
                {
                    lblCheck.Text = "Incorrect Account! Try again";
                }
            }
            catch (Exception)
            {
                lblTry.Text = "Cannot Login ";
            }
            finally
            {
                lblTry.Text += "*"; //add * when input correct data
            }
        }
    }
}