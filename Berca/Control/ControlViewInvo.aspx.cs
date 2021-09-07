using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace Berca.Control
{
    public partial class ControlViewInvo : System.Web.UI.Page
    {
        System.Globalization.CultureInfo cultureUS = System.Globalization.CultureInfo.GetCultureInfo("en-US");
        protected void Page_Load(object sender, EventArgs e)
        {
            string noInvoice = Request.QueryString["NoInvoice"].ToString();
            DateTime now = DateTime.Now;
            DataSet.dsBerca.View_OutStandingRow view_Ost = new DataSet.dsBercaTableAdapters.View_OutStandingTableAdapter().GetDataByInvoice(noInvoice).SingleOrDefault();
            string custNam = view_Ost.customername;
            string custId = view_Ost.CustomerID;
            DateTime invDate = DateTime.ParseExact(view_Ost.TglInvoice, "yyyy-MM-dd", cultureUS);
            decimal topDays = view_Ost.TOPDays;
            DateTime dueDate = invDate.AddDays(Convert.ToInt32(topDays.ToString()));
            int agingDays = Convert.ToInt32((now - invDate).TotalDays);
            int agingDue = Convert.ToInt32((now - dueDate).TotalDays);
            string curr = view_Ost.Currency;
            decimal invAmt = view_Ost.InvAmtIDR;
            decimal openAmt = view_Ost.OpenAmtIDR;
            DataSet.dsBerca.CurrencyRow currencyRow = new DataSet.dsBercaTableAdapters.CurrencyTableAdapter().GetDataByCurr(curr).SingleOrDefault();
            decimal curr_Rate = currencyRow.Rate;

            txtNoInvoice.Text = noInvoice;
            txtCustNam.Text = custNam;
            deInvoice.Date = invDate;
            deDueDate.Date = dueDate;
            txtAgingDays.Text = agingDays.ToString("N");
            txtAgingDue.Text = agingDue.ToString("N");
            txtRateCurr.Text = curr_Rate.ToString("N");
            txtInvAmt.Text = invAmt.ToString("N");
            txtOpenAmt.Text = openAmt.ToString("N");

            string full_Inv = noInvoice; // 0003-INV-21
            string[] nomor = full_Inv.Split('-');
            string inv = nomor[1];
            decimal inv_Thn = Convert.ToDecimal(nomor[2].ToString());
            decimal inv_No = Convert.ToDecimal(nomor[0].ToString());
 
            odsCollection.SelectParameters["InvNo"].DefaultValue = nomor[0].ToString(); // 21
            odsCollection.SelectParameters["Inv"].DefaultValue = inv;
            odsCollection.SelectParameters["InvThn"].DefaultValue = nomor[2].ToString(); // 1

            gvCollection.DataBind();
        }

        protected void btnCancelCollection_Click(object sender, EventArgs e)
        {
            List<object> lst_CollectID = gvCollection.GetSelectedFieldValues("CollectionID");
            List<string> list_ID = new List<string>();

            for (int i = 0; i < lst_CollectID.Count; i++)
            {
                string CollectionID = lst_CollectID[i].ToString();
                list_ID.Add(CollectionID);

            }
            string collect_ID = list_ID[0];
            new DataSet.dsBercaTableAdapters.CollectionTableAdapter().DeleteByCollectId(collect_ID);

            Response.Redirect(Request.RawUrl);
        }

        protected void gvCollection_Init(object sender, EventArgs e)
        {
            ASPxGridView gridView = (ASPxGridView)sender;
            foreach (GridViewColumn column in gridView.Columns)
            {
                if (column is GridViewDataColumn)
                {
                    ((GridViewDataColumn)column).Settings.AutoFilterCondition = AutoFilterCondition.Contains;
                }
            }

            GridViewDataTextColumn colInvNo = new GridViewDataTextColumn();
            colInvNo.FieldName = "NOINV";
            colInvNo.Caption = "No. Invoice";
            colInvNo.UnboundType = DevExpress.Data.UnboundColumnType.String;
            colInvNo.Width = 100;
            colInvNo.VisibleIndex = 2;
            colInvNo.Visible = true;
            colInvNo.Settings.AutoFilterCondition = AutoFilterCondition.Contains;
            gvCollection.Columns.Add(colInvNo);

        }

        protected void gvCollection_CustomUnboundColumnData(object sender, DevExpress.Web.ASPxGridViewColumnDataEventArgs e)
        {
            if (e.Column.FieldName == "NOINV")
            {
                string urutInv = Convert.ToString(e.GetListSourceFieldValue("InvNo")).PadLeft(4, '0');
                string Inv = Convert.ToString(e.GetListSourceFieldValue("Inv"));
                string InvThn = Convert.ToString(e.GetListSourceFieldValue("InvThn"));

                e.Value = Inv + "-" + InvThn + "-" + urutInv;
            }
        }
        protected void gvCollection_CUsstomColumnDisplayText(object sender, ASPxGridViewColumnDisplayTextEventArgs e)
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

    }
}