using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;

namespace Web_Proje
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            labelhg.Text = Session["isim"].ToString();
            if (!IsPostBack)
            {
                PopulateArticle();
            }



        }

        private void PopulateArticle()
        {
            using (Proje.DataAccess.WebProjeEntities dc = new Proje.DataAccess.WebProjeEntities())
            {
                var v = (from a in dc.icerik
                         join b in dc.ArticleScore on a.icerikid equals b.icerikid into bb
                         from b in bb.DefaultIfEmpty()
                         group new { a, b } by new { a.icerikid, a.icerikYazisi } into AA
                         select new
                         {
                             AA.Key.icerikid,
                             AA.Key.icerikYazisi,
                             Score = AA.Sum(a => a.b.Score) == null ? 0 : AA.Sum(a => a.b.Score),
                             Count = AA.Count()
                         });
                List<ArticleWithScore> AWS = new List<ArticleWithScore>();
                foreach (var i in v)
                {
                    AWS.Add(new ArticleWithScore
                    {
                        icerikid = i.icerikid,
                        icerikYazisi = i.icerikYazisi,
                        Score = i.Score / i.Count
                    });
                    GridView1.DataSource = AWS;
                    GridView1.DataBind();
                }
            }
        }
        
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static int SaveRating(int icerikid, int rate)
        {
            int result = 0;
            using (Proje.DataAccess.WebProjeEntities dc = new Proje.DataAccess.WebProjeEntities())
            {
                dc.ArticleScore.Add(new Proje.DataAccess.ArticleScore
                {
                    icerikid = icerikid,
                    Scoreid = 0,
                    Score = rate,
                    CreateDate = DateTime.Now
                }) ;
                dc.SaveChanges();

                var newScore = (from a in dc.ArticleScore
                                where a.icerikid.Equals(icerikid)
                                group a by a.icerikid into aa
                                select new
                                {
                                    Score = aa.Sum(a => a.Score) / aa.Count()
                                }).FirstOrDefault();
                result = newScore.Score;
            }
            return result;
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            

        }
    }
}
 