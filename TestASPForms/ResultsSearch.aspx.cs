using System;
using System.Web;
using System.Web.UI;

namespace TestASPForms
{

    public partial class ResultsSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Access "name" argument.
            string strName = Request["id"] ?? "(no name)";
           myLabel2.InnerText = strName;

            //Response.ContentType = "text/plain";
          //  Response.Write(string.Format("{0} arrives at {1}", strName, strTime));
        }
    }
}
