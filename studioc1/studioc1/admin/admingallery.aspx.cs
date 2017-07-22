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
    public partial class admingallery : System.Web.UI.Page
    {
        //studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var gall = db.imagemsts.ToList();
            var ga1 = db.imagemsts;
            GridView1.DataSource = ga1;
            GridView1.DataBind();


        }

        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LbtnDelete_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)(sender);
            int pid = Convert.ToInt32(lbtn.CommandArgument);
            var toDelete = db.imagemsts.SingleOrDefault(p => p.imageid == pid);
            db.imagemsts.DeleteOnSubmit(toDelete);
            db.SubmitChanges();
            loaddata();


        }
        public void loaddata()
        {

            List<selectimageResult> eventdata1 = db.selectimage().ToList();

            GridView1.DataSource = eventdata1;
            GridView1.DataBind();

        }  
      
    }
}