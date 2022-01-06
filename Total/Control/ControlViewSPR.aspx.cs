using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Berca.Control
{
    public partial class ControlViewSPR : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            string KodeSPR = Request.QueryString["KodeSPR"].ToString();

            DataSP.mstProyek.SelectSPRRow spr = new DataSP.mstProyekTableAdapters.SelectSPRTableAdapter().GetData(KodeSPR).SingleOrDefault();
            if (spr != null)
            {
                string nm_peminta = spr.peminta;
                string lks_peminta = spr.LokasiPeminta;
                string lks_proy = spr.LokasiProyek;
                string status = spr.Status;
                string material = spr.Material;
                string tipe_mtrl = spr.TipeMaterial;

                int id_ref = spr.idref;
                int proy_bln = spr.proyekbl;
                int proy_kd = spr.proyekkd;
                int proy_thn = spr.proyekth;

                string tgl_minta = spr.TanggalMinta.AddDays(14).ToString();

                txtNoSPR.Text = KodeSPR;
                txtPeminta.Text = nm_peminta;
                txtLksPmnt.Text = lks_peminta;
                txtLksPryk.Text = lks_proy;
                cbStatus.Text = status;

                deMintaSPR.Date = Convert.ToDateTime(spr.TanggalMinta.ToString());
                deSPR.Date = Convert.ToDateTime(tgl_minta);
                cbMtrl.Text = material + "; " + tipe_mtrl;
            }
            else
            {
                Response.Write("<script>window.close();</" + "script>");
                Response.End();
            }
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.close();</" + "script>");
            Response.End();
        }

        protected void btn_Upd_Click(object sender, EventArgs e)
        {
            int status = Convert.ToInt32(cbStatus.Value.ToString());

            DateTime dt_Spr = DateTime.Parse(deSPR.Date.ToString());
            int material = Convert.ToInt32(cbMtrl.Value.ToString());
            string KodeSPR = txtNoSPR.Text;
            string urutSPR = KodeSPR.Substring(0, 4);
            int idref = Convert.ToInt32(urutSPR);

            new DataSP.mstProyekTableAdapters.QueriesTableAdapter().Upd_Dtl(status, dt_Spr, material, idref);

            Lbl_Close.Text = "DATA BERHASIL DI UPDATE";
            Lbl_Close.Visible = true;
        }

        protected void btn_Del_Click(object sender, EventArgs e)
        {
            string KodeSPR = txtNoSPR.Text;
            string urutSPR = KodeSPR.Substring(0, 4);
            int idref = Convert.ToInt32(urutSPR);

            new DataSP.mstProyekTableAdapters.QueriesTableAdapter().Del_Detail(idref);
            new DataSP.mstProyekTableAdapters.QueriesTableAdapter().Del_Header(idref);
            new DataSP.mstProyekTableAdapters.QueriesTableAdapter().Del_Proyek(idref);

            Lbl_Close.Text = "DATA BERHASIL DI DELETE";
            Lbl_Close.Visible = true;
        }
    }
}