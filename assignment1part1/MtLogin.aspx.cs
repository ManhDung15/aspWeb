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
    public partial class NewLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void ValidateUser(object sender, AuthenticateEventArgs e)
        {
            int userId = 0;
            // string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog = LoginDatabase;Trusted_Connection=true;"))
            {
                using (SqlCommand cmd = new SqlCommand("Validate_User"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", Login1.UserName); //get name and password in login control from Validate_User
                    cmd.Parameters.AddWithValue("@Password", Login1.Password);
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar()); //process userId
                    con.Close();
                }
                Session["userId"] = userId;
                switch (userId)
                {
                    case -1:
                        Login1.FailureText = "Username and/or password is incorrect.";
                        break;
                    case -2:
                        Login1.FailureText = "user not exist! Register first.";
                        break;
                    default:
                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                        break;
                }
            }
        }
    }
}