using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineFootWare.Model;

namespace OnlineFootWare
{
    public partial class OrderPage : System.Web.UI.Page
    {
        FootProperty foot = new FootProperty();
        DbConection con = new DbConection();

        protected void Page_Load(object sender, EventArgs e)
        {
            

            DbConection con = new DbConection();
            
            if (!IsPostBack)
            {
                lblProductCode.Text = "" + Session["value"];
                foot.ProductCode = Convert.ToInt32(Session["value"]);
                StatusProperty status = con.Fetch(foot);
                
                lblProductName.Text = status.ProductName;
                lblPrice.Text = status.Cost.ToString();
            }
            
        }

        protected void btnBill_Click(object sender, EventArgs e)
        {

            foot.ProductCode = Convert.ToInt32(Session["value"]);

            StatusProperty status = con.Fetch(foot);
            int Quantity = Convert.ToInt32(txtQuantity.Text);
            lblTotalAmount.Text = Convert.ToString(status.Cost * Quantity);
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            StatusProperty status = new StatusProperty();
            status.ProductCode = Convert.ToInt32(lblProductCode.Text);
            status.ProductName = lblProductName.Text;
            status.Cost = Convert.ToInt32(lblPrice.Text);
            status.Quantity = Convert.ToInt32(txtQuantity.Text);
            status.TotalAmount = Convert.ToInt32(lblTotalAmount.Text);
            string msg = con.Payment(status);
            Response.Write($"<script>alert('{msg}')</script>");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("FootWareIndex.aspx");
        }
    }
}