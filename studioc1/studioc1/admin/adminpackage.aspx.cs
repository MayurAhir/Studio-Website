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
    public partial class adminpackage : System.Web.UI.Page
    {
        //studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            var package = db.packagemsts.ToList();
            var package1 = db.packagemsts;
            GridView1.DataSource = package1;
            GridView1.DataBind();

        }
        //protected void LbtnDelete_Click(object sender, EventArgs e)
        //{

        //    LinkButton lbtn = (LinkButton)(sender);
        //    //DB.Delete(Convert.ToInt32(lbtn.CommandArgument));
        //    db.packgedelete(Convert.ToInt32(lbtn.CommandArgument));

        //}





        protected void LbtnDelete_Click(object sender, EventArgs e)
        {
           

            LinkButton lbtn = (LinkButton)(sender);
            int pid = Convert.ToInt32(lbtn.CommandArgument);
            var toDelete = db.packagemsts.SingleOrDefault(p => p.packageid == pid);
            db.packagemsts.DeleteOnSubmit(toDelete);
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

            List<selectpackageResult> pacdata = db.selectpackage().ToList();
            GridView1.DataSource = pacdata;
            GridView1.DataBind();

            
        }

       






        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
      
       
    }
}