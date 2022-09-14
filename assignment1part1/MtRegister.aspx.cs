using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace assignment1part1
{
    public partial class NewRegister : System.Web.UI.Page
    {
        int userId = 0; //init user id
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void RegisterUser(object sender, EventArgs e)
        {
            userId = 0;
            
            // create connection with datasource and trusting connection
            using (SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog = LoginDatabase;Trusted_Connection=true;"))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_User")) //create command
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter()) // this command parameter get user name, password and email and store data
                    {
                        cmd.CommandType = CommandType.StoredProcedure; //storeprocedure use to insert record
                        cmd.Parameters.AddWithValue("@Username", txbxName.Text.Trim()); //trim is used to remove spacing characters
                        cmd.Parameters.AddWithValue("@Password", txbxPassword.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txbxEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Phone", txbxPhone.Text.Trim());
                        cmd.Connection = con;
                        //execute scalar use to convert to integer
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar()); //return first value
                        con.Close();
                    }
                }
                string message = string.Empty; //checking for duplication 
                switch (userId) //check existing in sql
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    default:
                        message = "Registration successful.\\nUser Id: " + userId.ToString();
                        // SendActivationEmail(userId);
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "Alert", "alert('" + message + "');", true); //system will display alert when click submit button
                Response.Redirect("NewLogin.aspx");
            }
        }
    }
}