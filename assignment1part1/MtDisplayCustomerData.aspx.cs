using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace assignment1part1
{
    public partial class MtDisplayCustomerData : System.Web.UI.Page
    {
        string strConnString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //every time page loading it will bind data
            {
                this.BindData();
            }
        }
        private void BindData()
        {
            string query = "SELECT * FROM Customer";
            SqlCommand cmd = new SqlCommand(query);
            GVCustomer.DataSource = GetData(cmd); //function getdata
            GVCustomer.DataBind();
        }
        private DataTable GetData(SqlCommand cmd) //parameter cmd - datatable is included with package libraries of SQL Data
        {
            strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString; //get data
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con; //select all from customer
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }
}