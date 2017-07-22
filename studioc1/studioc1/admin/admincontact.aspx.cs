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
    public partial class admincontact : System.Web.UI.Page
    {
       // studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var cnt = db.contactmsts.ToList();
            var cnt1 = db.contactmsts;
            Gridcontact.DataSource=cnt1;
            Gridcontact.DataBind();

        }

        protected void Gridcontact_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void LbtnDelete_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)(sender);
            int pid = Convert.ToInt32(lbtn.CommandArgument);
            var toDelete = db.contactmsts.SingleOrDefault(p => p.contactid == pid);
            db.contactmsts.DeleteOnSubmit(toDelete);
            db.SubmitChanges();
            loaddata();


        }
        public void loaddata()
        {

            List<selectcontactResult> condata = db.selectcontact().ToList();
            Gridcontact.DataSource = condata;
            Gridcontact.DataBind();




        }


        
    }
}





            
