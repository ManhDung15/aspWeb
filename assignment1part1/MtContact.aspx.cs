using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1part1
{
    public partial class MtContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnCont_Click(object sender, EventArgs e)
        {
            Response.Redirect("MtLogin.aspx");
        }

        protected void btnCac_Click(object sender, EventArgs e)
        {
            Response.Redirect("MtLogin.aspx");
        }
    }
}