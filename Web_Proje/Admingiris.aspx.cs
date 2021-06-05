using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Proje
{
    public partial class Admingiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string kullaniciadi = "admin", sifre = "admin";
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if(kullaniciadi == txtKullaniciAdi.Text && sifre == txtSifre.Text)
            {
                Response.Redirect("~/AdminPanel.aspx");
            }
            else
            {
                lblUyari.Text = "Hatalı Giriş";
            }
        }
    }
}