using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Proje
{
    public partial class PostEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Proje.DataAccess.icerik icerikekle = new Proje.DataAccess.icerik();
            icerikekle.icerikYazisi = TextBox1.Text;
            Proje.Business.Post.PostOlustur(icerikekle);
            TextBox1.Text = "";
        }
    }
}