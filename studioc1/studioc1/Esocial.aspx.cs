using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;

namespace studioc1
{
    public partial class Esocial : System.Web.UI.Page
    {
        //studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["id"] == null)
            {
               
            }
            else
            {
                List<eventdynamicResult> dd1 = db.eventdynamic(Convert.ToInt32(Request.QueryString["id"])).ToList();
                
               
                Repeater1.DataSource = dd1;
               
                Repeater1.DataBind();
               

            }


          
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}