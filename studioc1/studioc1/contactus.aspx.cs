using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;

namespace studioc1
{
    public partial class contactus : System.Web.UI.Page
    {
        studioDBDataContext db = new studioDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendbtn_Click(object sender, EventArgs e)
        {

            db.contact_insert(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text,true);
        }
    }
}