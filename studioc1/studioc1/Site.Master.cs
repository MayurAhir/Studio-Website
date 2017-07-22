using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;

namespace studioc1
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        studioDBDataContext db = new studioDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
    }
}
