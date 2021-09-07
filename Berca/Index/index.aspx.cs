using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace Berca.Index
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvInvoice_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
        {
            string full_Inv = txtInvNo.Text.ToUpper();
            string[] nomor = full_Inv.Split('-');
            string inv = nomor[0];
            string inv_Thn = nomor[1].ToString();
            string inv_No = nomor[2].ToString();


            ObjectDataSource1.SelectParameters["NoInvoice"].DefaultValue = "%" + txtInvNo.Text + "%";
            gvInvoice.DataBind();
        }


        protected void gvInvoice_CustomColumnDisplayText(object sender, ASPxGridViewColumnDisplayTextEventArgs e)
        {
            if (e.Column.FieldName != "NO")
                return;
            int rowcount = 1;
            ASPxGridView grid = sender as ASPxGridView;

            if (grid.IsGroupRow(e.VisibleIndex))
                return;

            object keyValue = grid.GetRowValues(e.VisibleIndex, grid.KeyFieldName);
            for (int i = 0; i < e.VisibleIndex; i++)
            {
                if (!grid.IsGroupRow(i))
                    rowcount++;
                else
                    rowcount = 1;
            }
            e.DisplayText = rowcount.ToString();
        }

        protected void btnViewInv_Click(object sender, EventArgs e)
        {
            List<object> noinv = gvInvoice.GetSelectedFieldValues("NoInvoice");
            List<string> list_inv = new List<string>();

            for (int i = 0; i < noinv.Count; i++)
            {
                string no_Invoice = noinv[i].ToString();
                list_inv.Add(no_Invoice);
                
            }
            string asd = list_inv[0];
            Response.Redirect("~/Control/ControlViewInvo.aspx?NoInvoice=" + list_inv[0]);
        }
        protected void btnCancelInv_Click(object sender, EventArgs e)
        {
            List<object> noinv = gvInvoice.GetSelectedFieldValues("NoInvoice");
            List<string> list_inv = new List<string>();

            for (int i = 0; i < noinv.Count; i++)
            {
                string no_Invoice = noinv[i].ToString();
                list_inv.Add(no_Invoice);

            }
            string asd = list_inv[0];
            Response.Redirect("~/Control/ControlCancelInvo.aspx?NoInvoice=" + list_inv[0]);
        }

    }
}