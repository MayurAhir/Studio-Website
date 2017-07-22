using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;

namespace studioc1
{
    public partial class gallery : System.Web.UI.Page
    {
       // studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var galdata = db.imagemsts.Where(x => x.Isactive == true).ToList();
            Repeater1.DataSource = galdata;
            Repeater1.DataBind();
        }
    }
}