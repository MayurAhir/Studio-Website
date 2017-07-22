using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.admin;
using studioc1.data;

namespace studioc1.admin
{
    public partial class order : System.Web.UI.Page
    {
       // studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var package = db.orderbookings.ToList();
            var ord1 = db.orderbookings;
            GridView1.DataSource = ord1;
            GridView1.DataBind();

        }
        protected void LbtnDelete_Click(object sender, EventArgs e)
        {


            LinkButton lbtn = (LinkButton)(sender);
            int pid = Convert.ToInt32(lbtn.CommandArgument);
            var toDelete = db.orderbookings.SingleOrDefault(p => p.obid == pid);
            db.orderbookings.DeleteOnSubmit(toDelete);
            db.SubmitChanges();
            loaddata();

        }

        public void loaddata()
        {
            //var package = db.packagemsts.ToList();
            //var package1 = db.packagemsts;
            //GridView1.DataSource = package1;
            //GridView1.DataBind();

            //List<selectpackageResult> pacdata = db.selectpackage().ToList();
            //GridView1.DataSource = pacdata;
            //GridView1.DataBind();

            List<selectorederResult> pacdata = db.selectoreder().ToList();
            GridView1.DataSource = pacdata;
            GridView1.DataBind();


        }
    }
}