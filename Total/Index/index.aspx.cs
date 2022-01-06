using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Data.SqlClient;
using System.Data;

namespace Berca.Index
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvSPR_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
        {
            string kode = txtKodeSPR.Text;
            SqlDataSource2.SelectParameters["SPR"].DefaultValue = "%" + kode + "%";
            gvSPR.DataBind();
        }


        protected void gvSPR_CustomColumnDisplayText(object sender, ASPxGridViewColumnDisplayTextEventArgs e)
        {
            if (e.Column.FieldName != "NO")
                return;
            int rowcount = 1;
            ASPxGridView grid = sender as ASPxGridView;

            if (grid.IsGroupRow(e.VisibleIndex))
                return;
            if (e.Column.FieldName == "status")
            {
                if (e.Value is int)
                {
                    e.Value = (int)e.Value == 0 ? "No" : "Yes";
                }
            }
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
            List<object> spr = gvSPR.GetSelectedFieldValues("KodeSPR");
            List<string> list_spr = new List<string>();

            for (int i = 0; i < spr.Count; i++)
            {
                string kd_SPR = spr[i].ToString();
                list_spr.Add(kd_SPR);

            }
            string url = "/Control/ControlViewSPR.aspx?KodeSPR=" + list_spr[0];
            Response.Write("<script language=\"javascript\">window.open('" + url + "','SportZip',toolbar='0,scrollbars=-1,resizable=-1');void(0);</script>");
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            var asd = new DataSP.mstProyekTableAdapters.QueriesTableAdapter().Get_Max_Ref(12, 2021);
            txtKodeSPR.Text = asd.ToString();
            
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            string kode = txtKodeSPR.Text;
            var spr = new DataSP.mstProyekTableAdapters.QueriesTableAdapter().SelectSPR(kode);
            gvSPR.DataBind();
        }

    }
}