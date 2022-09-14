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
    public partial class MtDisplayProductData : System.Web.UI.Page
    {
        //declare
        string strConnString;
        SqlDataAdapter adapter;
        DataSet dataSet;
        protected void Page_Load(object sender, EventArgs e)
        {
            strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString; //declare configuration manager to connect to ConnectionString
        }//come from SQL data souurce
        protected void ddlData1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //convert data to text in ddl
            adapter = new SqlDataAdapter("select * from Product where CategoryID='" + ddlData1.SelectedItem.Text + "' ", strConnString);
            dataSet = new DataSet(); //making instance data set
            adapter.Fill(dataSet); //fill data in adapter
            GridView1.DataSource = dataSet; //populate data in Gridview
            GridView1.DataBind(); //bind data in the GridView
        }

    }
}