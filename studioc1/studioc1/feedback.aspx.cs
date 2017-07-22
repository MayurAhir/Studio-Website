using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;


namespace studioc1
{
    public partial class feedback : System.Web.UI.Page
    {
        studioDBDataContext db = new studioDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
             

        }

        protected void sendbtn_Click(object sender, EventArgs e)
        {
           // db.feedback_insert(emailtb.Text, unametb.Text, contacttb.Text, messagetb.Text,true); 
            db.feedback_insert(emailtb.Text, unametb.Text, contacttb.Text, messagetb.Text, true);

        }

       
       
    }
}