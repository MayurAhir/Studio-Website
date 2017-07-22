using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;

namespace studioc1
{
    public partial class regist : System.Web.UI.Page
    {
        studioDBDataContext db = new studioDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
        protected void submitbtn_Click(object sender, EventArgs e)
        {

            string dt = yeardrp.Text + "-" + monthdrp.Text + "-" + daydrp.Text;

         //db.registration1_insert(fnametb.Text, lnametb.Text, DateTime.Parse(dt), uaddresstb.Text, contacttb.Text, emailtb.Text, countrydrp.Text, statetb.Text, citytb.Text, pintb.Text, true, usenametb.Text, passwordtb.Text);

         db.registration1_insert(fnametb.Text, lnametb.Text, DateTime.Parse(dt), uaddresstb.Text, contacttb.Text, emailtb.Text, countrydrp.Text, statetb.Text, citytb.Text, pintb.Text, true,usenametb.Text, passwordtb.Text,DropDownList1.Text);    
        }
    }
}