using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectCars
{
    public partial class ShowCart : System.Web.UI.Page
    {
        Cart c;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cart"] == null || Session["Cart"] + "" == "")
            {
                LtlCart.Text = "סל הקניות ריק";
            }
            else
            {
                c = (Cart)Session["Cart"];
                RptCart.DataSource = c.Items;
                RptCart.DataBind();
                LtlCart.Text = "סה''כ מחיר:" + c.GetTotal();
            }
        }

        protected void ClearCart_Click(object sender, EventArgs e)
        {
            Session["Cart"] = null;
            Response.Redirect("ShowCart.aspx");
        }

        protected void Buy_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderComplete.aspx");
        }

        protected void Erase_Command(object sender, CommandEventArgs e)
        {
            var button = (Button)sender;
            var id_product = int.Parse(button.CommandArgument);
            var itemforDel = c.Items.First(x => x.Pid == id_product);
            c.Items.Remove(itemforDel);
            RptCart.DataSource = c.Items;
            RptCart.DataBind();
            LtlCart.Text = "סה''כ מחיר:" + c.GetTotal();
        }

    }
}