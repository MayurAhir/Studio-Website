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
    public partial class managefeedback : System.Web.UI.Page
    {

        studioDBDataContext db = new studioDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] == null)
                {
                    s1.Visible = true;
                    //c1.Visible = false;
                }
                else
                {
                    var q = db.feedbackmst1s.Where(x => x.feedbackid == Convert.ToInt32(Request.QueryString["id"])).FirstOrDefault();
                    TextBox2.Text = q.feedbackid.ToString();
                    TextBox1.Text= q.feedbacktext;

                  
                    //var q1 = db.packagemsts.Where(x => x.packageid == Convert.ToInt32(Request.QueryString["id"])).ToList();
                    //if (q1.Count > 0)
                    //{
                    //    foreach (var item1 in q1)
                    //    {
                    //        foreach (ListItem item in CheckBoxServices.Items)
                    //        {
                    //            if (item1.ServiceName == item.Text)
                    //            {
                    //                item.Selected = true;
                    //            }
                    //        }
                    //    }

                    //}
                    s1.Visible = true;
                    c1.Visible = true;
                }
            }




        }

        protected void s1_Click(object sender, EventArgs e)
        {
            db.feedbackup(Convert.ToInt32(TextBox2.Text), TextBox1.Text);
        }
    }
}