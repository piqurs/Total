using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace Berca.Control
{
    public partial class ControlAddInvo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string tahun = DateTime.Now.Year.ToString().Substring(2, 2);
            decimal dec_tahun = Convert.ToDecimal(tahun);

            decimal? maxInv = new DataSet.dsBercaTableAdapters.OutstandingInvTableAdapter().MaxInvNo(dec_tahun);
            maxInv++;
            string nomor_Invoice = "INV" + '-' + tahun + '-' + maxInv.ToString().PadLeft(4, '0');
            txtInvNo.Text = nomor_Invoice;

            string invDate = DateTime.Now.ToString("yyyy-MM-dd");

            txtInvDate.Text = invDate;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            txtInvAmt.Enabled = false;
            cbCurr.Enabled = false;
            cbCustomer.Enabled = false;
            btnSubmit.Enabled = false;
            lblNotif.Visible = true;

            string guid = System.Guid.NewGuid().ToString();
            string cust_id = cbCustomer.Value.ToString();
            string cust_name = cbCustomer.Text;
            string nomor_Invoice = txtInvNo.Text;

            DataSet.dsBerca.CustomerRow cust = new DataSet.dsBercaTableAdapters.CustomerTableAdapter().GetDataByCustID(cust_id).SingleOrDefault();
            decimal top = cust.TOPDays;
            string[] nomor = nomor_Invoice.Split('-');
            string inv = nomor[0];
            string inv_Thn = nomor[1].ToString();
            string inv_No = nomor[2].ToString();

            string tgl_Inv = txtInvDate.Text;
            DateTime dt_tgl_inv = DateTime.Parse(tgl_Inv);
            DateTime dt_due_date = dt_tgl_inv.AddDays(Convert.ToInt32(top.ToString()));
            string due_date = dt_due_date.ToString("yyyy-MM-dd");

            string currency = cbCurr.Value.ToString();
            decimal inv_amt = decimal.Parse(txtInvAmt.Text.ToString());
            decimal rate_curr = 1;
            DataSet.dsBerca.CurrencyRow rate = new DataSet.dsBercaTableAdapters.CurrencyTableAdapter().GetDataByCurr(currency).SingleOrDefault();
            if (currency != "RP")
            {
                
                rate_curr = rate.Rate;
                inv_amt = rate_curr * inv_amt;
            } 

            int invamtFRG = 0;
            string remark = "";
            int tglent = DateTime.Now.Day;
            int blnent = DateTime.Now.Month;
            int thnent = DateTime.Now.Year;
            int jament = DateTime.Now.Hour;
            int mntent = DateTime.Now.Minute;
            int dtkent = DateTime.Now.Second;

            new DataSet.dsBercaTableAdapters.InvoiceTableAdapter().
                InsertInvoice_2(decimal.Parse(inv_No), inv, decimal.Parse(inv_Thn), cust_id, tgl_Inv, due_date, currency, rate_curr, inv_amt,
                invamtFRG, invamtFRG, invamtFRG, remark, 1, tglent, blnent, thnent, jament, mntent, dtkent, guid);

            imgBtnClose.Visible = true;
        }

    }
}