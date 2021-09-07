using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Berca.Control
{
    public partial class ControlDeleteInvo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string noInvoice = Request.QueryString["NoInvoice"].ToString();
            txtInvNo.Text = noInvoice;
        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            string noInvoice = txtInvNo.Text;
            string full_Inv = noInvoice; // 0003-INV-21
            string[] nomor = full_Inv.Split('-');
            string inv = nomor[1];
            decimal inv_Thn = Convert.ToDecimal(nomor[2].ToString());
            decimal inv_No = Convert.ToDecimal(nomor[0].ToString());

            new DataSet.dsBercaTableAdapters.InvoiceTableAdapter().UpdateIsActive(inv, inv_No, inv_Thn);

            btnYes.Visible = false;
            btnNo.Visible = false;
            btnReturn.Visible = true;
            lblNotif.Visible = true;
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Index/Index.aspx");
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Index/Index.aspx");
        }
    }
}