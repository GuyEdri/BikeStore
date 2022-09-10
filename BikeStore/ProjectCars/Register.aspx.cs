using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectCars
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegButton_Click(object sender, EventArgs e)
        {
            string Sql = $"Insert into Users(UserName, UserPass,UserEmail,UserPhone)values('{FName.Text}','{UserPass.Text}','{Email.Text}','{Phone.Text}')";
            string Connstr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\גיא\Documents\BikesDB.mdf; Integrated Security = True; Connect Timeout = 30";
            SqlConnection Conn = new SqlConnection(Connstr);
            Conn.Open();
            SqlCommand Cmd = new SqlCommand(Sql, Conn);
            Cmd.ExecuteNonQuery();
            Session["Login"] = FName.Text;
            Conn.Close();
            Response.Redirect("Login.aspx");
        }
    }
}