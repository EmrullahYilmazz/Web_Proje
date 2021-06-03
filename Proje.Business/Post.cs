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
    }
}
