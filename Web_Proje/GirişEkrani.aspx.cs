using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Proje
{
    public partial class GirişEkrani : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayitOl_Click(object sender, EventArgs e)
        {
            Proje.DataAccess.Kullanici yenikullanici = new Proje.DataAccess.Kullanici();
            yenikullanici.KullaniciAdi = txtkKullaniciAdi.Text;
            yenikullanici.KullaniciEpostasi = txtkEposta.Text;
            yenikullanici.KullaniciSifre = txtkSifre.Text;
            Proje.Business.kullanicilar.KullaniciEkle(yenikullanici);
            txtkKullaniciAdi.Text = "";
            txtkSifre.Text = "";
            txtkEposta.Text = "";
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Proje.Business.kullanicilar kullanicilar = new Proje.Business.kullanicilar();
            var kullanici = kullanicilar.KullaniciariGetir();
            GridView1.DataSource = kullanici;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Add(new ListItem(TextBox1.Text));

        }
    }
}