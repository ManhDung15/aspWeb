using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1part1
{
    public partial class masterindex : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        { //check whether customer login or logout
            if (Session["userId"] != null)
            {
                btnlogin.Visible = false;
                btnlogout.Visible = true;
            }
            else
            {
                btnlogin.Visible = true;
                btnlogout.Visible = false;
            }

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("MtLogin.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("MtLogout.aspx");
        }
    }
}