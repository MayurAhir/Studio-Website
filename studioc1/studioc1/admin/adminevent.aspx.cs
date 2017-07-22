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
    public partial class adminevent : System.Web.UI.Page
    {
        //studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var event1 = db.eventsubtypes.ToList();
            var event2 = db.eventsubtypes;
            GridView1.DataSource = event2;
            GridView1.DataBind();
                        
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LbtnDelete_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)(sender);
            int pid = Convert.ToInt32(lbtn.CommandArgument);
            var toDelete = db.eventsubtypes.SingleOrDefault(p => p.stypeid == pid);
            db.eventsubtypes.DeleteOnSubmit(toDelete);
            db.SubmitChanges();
            loaddata();


        }
        public void loaddata()
        {

            //List<selecteventResult> eventdata = db.selectevent().ToList();

            List<subeventselect_spResult> subdata = db.subeventselect_sp().ToList();
            GridView1.DataSource = subdata;
            GridView1.DataBind();

       }
    }
}