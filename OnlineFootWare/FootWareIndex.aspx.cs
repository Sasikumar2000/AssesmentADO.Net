using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineFootWare.Model;

namespace OnlineFootWare
{
    public partial class FootWareIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            div1.Visible = false;
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            FootProperty foot = new FootProperty();
            DbConection db = new DbConection();
            foot.Category = DDCategory.SelectedValue;
            DataTable dt = new DataTable();
            dt = db.ViewDb(foot);
            GVProductData.DataSource = dt;
            GVProductData.DataBind();
            div1.Visible = true;

        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            Session["value"] = txtProductCode.Text;
            Response.Redirect("OrderPage.aspx");
        }

        protected void btnStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderStatusPage.aspx");
        }
    }
}