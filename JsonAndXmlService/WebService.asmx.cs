using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;

namespace JsonAndXmlService
{
    
    public class WebService : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void GetPersonelJSON()
        {
            Personel[] personeller = new Personel[]
            {
new Personel()
{
Id=1,
Ad="Hatice",
Soyad="Koyuncu"
},
new Personel()
{
Id=2,
Ad="Seher Eliza",
Soyad="Koyuncu"
}
            };
            JavaScriptSerializer JSONCevir = new JavaScriptSerializer();
            this.Context.Response.ContentType = "application/json; charset=utf-8";
            this.Context.Response.Write(JSONCevir.Serialize(personeller));

        }
    }
}
