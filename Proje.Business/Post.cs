using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Proje.DataAccess;

namespace Proje.Business
{
    public class Post
    {
        public static void PostOlustur(Proje.DataAccess.icerik postyap)
        {
            Proje.DataAccess.WebProjeEntities ent = new DataAccess.WebProjeEntities();
            ent.icerik.Add(postyap);
            ent.SaveChanges();
        }
        public static void PostSil(int sil)
        {
            Proje.DataAccess.WebProjeEntities ent = new DataAccess.WebProjeEntities();
            var Icerık = ent.icerik.Where(p => p.icerikid == sil).FirstOrDefault();
            ent.icerik.Remove(Icerık);
            ent.SaveChanges();
        }
    }
}
