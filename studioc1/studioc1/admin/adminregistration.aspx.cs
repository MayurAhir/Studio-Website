using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;
using studioc1.admin;

namespace studioc1.admin
{
    public partial class adminregistration : System.Web.UI.Page
    {
        studioDBDataContext db = new studioDBDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var reg = db.reg1msts.ToList();
            var reg1 = db.reg1msts;
            Gridregistration.DataSource = reg1;
            Gridregistration.DataBind();

        }

       
    }
}