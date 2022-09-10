using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using ProjectCars.biz.pelecard.ws101;

namespace ProjectCars
{
    public partial class OrderComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBuy_Click(object sender, EventArgs e)
        {
            TrxWs ws = new TrxWs();
            ws.DebitRegularType(Fnametxt.Text, "", "", "", CreditCardType.Value, monthtxt.Value, "", "", "", CardCvvtxt.Text, "", "", "", ""); ;
            paymentltl.Text = "התשלום בוצע בהצלחה";
        }
    }
}