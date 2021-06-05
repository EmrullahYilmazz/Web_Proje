using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.IO;
using System.Xml.Serialization;
using System.Data;
using System.Text;

namespace AMSXService
{
    
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    
    public class service : System.Web.Services.WebService
    {
        private DataSet1TableAdapters.KullaniciTableAdapter taAllvids = new DataSet1TableAdapters.KullaniciTableAdapter();
        private DataSet1.KullaniciDataTable dtAllvids;
       
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void getAllData()
        {
            Context.Response.Write(getvids());
        }

        private string getvids()
        {
            dtAllvids = taAllvids.Getvits();
            string myResponse = Newtonsoft.Json.JsonConvert.SerializeObject(dtAllvids);
            return myResponse;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Xml)]
        public void getAlldataXML()
        {
            Context.Response.Write(getvidsXML());
        }

        private string getvidsXML()
        { 
            string myReturn = string.Empty;
            dtAllvids = taAllvids.Getvits();
            using (var memoryStream = new MemoryStream())
            {
                using (TextWriter streamWriter = new StreamWriter(memoryStream))
                {
                    var xmlSerialiser = new XmlSerializer(typeof(DataTable));
                    xmlSerialiser.Serialize(streamWriter, dtAllvids);
                    myReturn = Encoding.UTF8.GetString(memoryStream.ToArray());
                }
            }

            return myReturn;

        }
    }
}
