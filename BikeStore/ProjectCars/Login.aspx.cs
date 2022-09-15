using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectCars
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string sql = $"select * from Users where UserName='{UserName.Text}' and UserPass='{UserPass.Text}'";
            string Connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|BikesDB.mdf;Integrated Security=True; Connect Timeout = 30"; SqlConnection Conn = new SqlConnection(Connstr);
            Conn.Open();
            SqlCommand Cmd = new SqlCommand(sql, Conn);
            SqlDataReader Dr = Cmd.ExecuteReader();
            if (Dr.Read())
            {
                Session["Login"] = (string)Dr["UserName"];
                Conn.Close();
                Response.Redirect("Default.aspx");
            }
            else
            {
                LtlLogin.Text = "<span style='color:red'>משתמש אינו רשום במערכת<span>";
                Conn.Close();
            }
        }
    }
}