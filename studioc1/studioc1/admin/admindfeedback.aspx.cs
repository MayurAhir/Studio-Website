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
    public partial class admindfeedback : System.Web.UI.Page
    {
       // studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var feedv = db.feedbackmst1s.ToList();
            var feedklst = db.feedbackmst1s;
            Gridfeedback.DataSource = feedklst;
            Gridfeedback.DataBind();


        }

        protected void Gridfeedback_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LbtnDelete_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)(sender);
            int pid = Convert.ToInt32(lbtn.CommandArgument);
            var toDelete = db.feedbackmst1s.SingleOrDefault(p => p.feedbackid == pid);
            db.feedbackmst1s.DeleteOnSubmit(toDelete);
            db.SubmitChanges();
            loaddata();


        }
        public void loaddata()
        {

            List<selectfeedbackResult> feeddata = db.selectfeedback().ToList();

            Gridfeedback.DataSource = feeddata;
            Gridfeedback.DataBind();




        }

        
    }
}