using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Proje.DataAccess;

namespace Web_Proje
{
    public partial class GirişEkrani : System.Web.UI.Page
    {
        SqlConnection db = new SqlConnection("Data Source=DESKTOP-GQM48OE;Initial Catalog=WebProje;Integrated Security=True");
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
            SqlDataAdapter da = new SqlDataAdapter("select * from Kullanici where KullaniciAdi = @KullaniciAdi and KullaniciSifre = @KullaniciSifre", db);
            da.SelectCommand.Parameters.Add("@KullaniciAdi", SqlDbType.VarChar, 50);
            da.SelectCommand.Parameters.Add("@KullaniciSifre", SqlDbType.VarChar, 50);
            da.SelectCommand.Parameters["@KullaniciAdi"].Value = txtKullaniciAdi.Text;
            da.SelectCommand.Parameters["@KullaniciSifre"].Value = txtSifre.Text;
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                System.Threading.Thread.Sleep(3000);
                db.Open();
                lblUyari.Text = "Giriş Başarılı, lütfen bekleyiniz yönlendiriliyorsunuz...";
                Session.Add("isim", txtKullaniciAdi.Text);
                Response.Redirect("https://localhost:44320/Default.aspx");

                //Label6.Text = Session["isim"].ToString();






            }
            else
            {
                lblUyari.Text = "Hatalı Giriş Yaptınız!";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            

        }
    }
}