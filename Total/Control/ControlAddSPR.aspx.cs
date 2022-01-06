using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Globalization;

namespace Berca.Control
{
    public partial class ControlAddInvo : System.Web.UI.Page
    {
        CultureInfo cultureUS = new CultureInfo("en-US");
        protected void Page_Load(object sender, EventArgs e)
        {
            deSPR.Date = DateTime.Now.Date;
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int bulan = DateTime.Now.Month;
            int tahun = DateTime.Now.Year;
            int material = Convert.ToInt32(cbMtrl.Value.ToString());
            int status = 0;
            int kd_pro = 1283;

            var max_Ref = new DataSP.mstProyekTableAdapters.QueriesTableAdapter().Get_Max_Ref(bulan, tahun);
            int max_Ref_ = Convert.ToInt32(max_Ref.ToString());
            max_Ref_++;
            
            string nm_peminta = txtPeminta.Text;
            string lks_pro = txtLksPryk.Text;
            string lks_peminta = txtLksPmnt.Text;

            DateTime dt_Spr = DateTime.Parse(deSPR.Date.ToString());
            
            // Insert Header
            new DataSP.mstProyekTableAdapters.QueriesTableAdapter().insert_Header(max_Ref_, nm_peminta, dt_Spr, lks_peminta, dt_Spr);

            // Insert Detail
            new DataSP.mstProyekTableAdapters.QueriesTableAdapter().insert_Detail(max_Ref_, material, dt_Spr, status, bulan, tahun, kd_pro, dt_Spr);

            // Insert Proyek
            new DataSP.mstProyekTableAdapters.QueriesTableAdapter().insert_Proyek(max_Ref_, lks_pro);

            btnSubmit.Enabled = false;
            btnClose.Visible = true;
            Lbl_Close.Visible = true;
            
        }
        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.close();</" + "script>");
            Response.End();
        }
    }
}