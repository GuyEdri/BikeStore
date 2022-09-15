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
    public partial class Add2Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Pid = int.Parse("" + Request["Pid"]);
            Cart c;

            string pro;
            if (Session["Cart"] == null || Session["Cart"] + "" == "")
            {
                c = new Cart();
            }
            else
            {
                c = (Cart)Session["Cart"];
            }

            string Conpro = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|BikesDB.mdf;Integrated Security=True; Connect Timeout = 30"; SqlConnection Sqpro = new SqlConnection();
            Sqpro.ConnectionString = Conpro;

            Sqpro.Open();
            SqlCommand Cprd = new SqlCommand();
            Cprd.Connection = Sqpro;
            pro = "select * from Product where Pid= ";
            pro += Pid;
            Cprd.CommandText = pro;
            SqlDataReader dr = Cprd.ExecuteReader();
            Item A = new Item();
            while (dr.Read())
            {
                if ((int)dr["Pid"] == Pid)
                {
                    A.Pid = (int)dr["Pid"];
                    A.PName = (string)dr["Pname"];
                    A.PPrice = double.Parse("" + dr["Pprice"]);
                    A.PImage = (string)dr["Pimg"];
                    A.Amount = 1;
                    A.PDesc = (string)dr["Pdesc"];
                }
                c.Add2Cart(A);
                break;

            }


            Sqpro.Close();
            Session["Cart"] = c;
            Response.Redirect("ShowCart.aspx");

        }
    }
}