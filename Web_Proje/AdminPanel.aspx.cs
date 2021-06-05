using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Proje
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44311/service.asmx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminGiris.aspx");
        }
    }
}