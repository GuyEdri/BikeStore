using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ProjectCars
{
    public partial class Product1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Connstr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\גיא\Documents\BikesDB.mdf; Integrated Security = True; Connect Timeout = 30";
            SqlConnection Sqpro = new SqlConnection();
            Sqpro.ConnectionString = Connstr;
            Sqpro.Open();
            SqlCommand Cprd = new SqlCommand();
            Cprd.Connection = Sqpro;
            string pro = "select * from Product";
            Cprd.CommandText = pro;
            DataTable DT = new DataTable();
            SqlDataAdapter DA = new SqlDataAdapter();
            DA.SelectCommand = Cprd;
            DA.Fill(DT);
            Rpt.DataSource = DT;
            Rpt.DataBind();
            SqlDataReader dr = Cprd.ExecuteReader();
            Sqpro.Close();
        }
    }
}