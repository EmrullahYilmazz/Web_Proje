using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Proje.DataAccess;

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

        public static void IcerikEkle(Proje.DataAccess.icerik yazilar)
        {
            Proje.DataAccess.WebProjeEntities ent = new DataAccess.WebProjeEntities();
            ent.icerik.Add(yazilar);
            ent.SaveChanges();
        }
        
        public List <Proje.DataAccess.icerik> icerigiGetir()
        {
            Proje.DataAccess.WebProjeEntities ent = new DataAccess.WebProjeEntities();
            var sonuc1 = ent.icerik.ToList();
            return sonuc1;
        }

        public static implicit operator kullanicilar(icerik v)
        {
            throw new NotImplementedException();
        }
    }
}
