using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proje.Business
{
    public class kullanicilar
    {
        public List<Proje.DataAccess.Kullanici> KullaniciariGetir()
        {
            Proje.DataAccess.WebProjeEntities ent = new DataAccess.WebProjeEntities();
            var sonuc = ent.Kullanici.ToList();
            return sonuc;
        }
        public static void KullaniciEkle(Proje.DataAccess.Kullanici kullanicilar)
        {
            Proje.DataAccess.WebProjeEntities ent = new DataAccess.WebProjeEntities();
            ent.Kullanici.Add(kullanicilar);
            ent.SaveChanges();
        }
        
    }
}
