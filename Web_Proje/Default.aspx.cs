using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Proje
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //labelhg.Text = Session["isim"].ToString();
            /*
             Proje.Business.kullanicilar getir = new Proje.Business.kullanicilar();
            var icerikler = getir.icerigiGetir();
            DataList1.DataSource = icerikler;
            DataList1.DataBind(); */

            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Proje.DataAccess.icerik yazilar = new Proje.DataAccess.icerik();
            yazilar.icerikYazisi = TextBox1.Text;
            Proje.Business.kullanicilar.IcerikEkle(yazilar);
            TextBox1.Text = "";
            

        }
    }
}
 