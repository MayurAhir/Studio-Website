using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;
using studioc1.admin;
using System.IO;
using System.Data;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Drawing;
using System.Drawing.Imaging;


namespace studioc1.admin
{
    public partial class adminmanagegallery : System.Web.UI.Page
    {
        studioDBDataContext db = new studioDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] == null)
                {
                    submit1.Visible =true;
                    u1.Visible = false;
                }
                else
                {
                    var q = db.imagemsts.Where(x => x.imageid == Convert.ToInt32(Request.QueryString["id"])).FirstOrDefault();
                    TextBox1.Text = q.imageid.ToString();
                 phnametb.Text = q.imagename;
                    
                   detb.Text = q.descriptions;

                   CheckBox1.Checked = Convert.ToBoolean(q.Isactive);


                   

                    
                    submit1.Visible = false;
                    u1.Visible = true;
                }
            }
           

          
        }
        protected void submit1_Click(object sender, EventArgs e)
        {
          
            string imgname = "";
            //int? imgid = 0;

            try
            {
                if (FileUpload1.HasFile)
                {
                    imgname = Server.MapPath("../img/Services/Big/"+FileUpload1.FileName);
                    FileUpload1.PostedFile.SaveAs(imgname);
                  
                }

                db.insertimage(phnametb.Text, detb.Text,FileUpload1.FileName, Convert.ToBoolean(CheckBox1.Checked));

                Response.Redirect("admingallery.aspx");
            }
                catch(Exception)
                {

                }

            }




        protected void u1_Click(object sender, EventArgs e)
        {


            if (FileUpload1.FileName == null || FileUpload1.FileName == "")
            {
                db.updateimage(Convert.ToInt32(TextBox1.Text), phnametb.Text, detb.Text, phnametb.Text, Convert.ToBoolean(CheckBox1.Checked));

            }

            else
            {
                if (FileUpload1.HasFile)
                {
                    string imgpath1 = Server.MapPath("../img/services/Big/" + FileUpload1.FileName);
                    FileUpload1.PostedFile.SaveAs(imgpath1);
                    db.updateimage(Convert.ToInt32(TextBox1.Text), FileUpload1.FileName, detb.Text, FileUpload1.FileName, Convert.ToBoolean(CheckBox1.Checked));

                }
            }



            Response.Redirect("admingallery.aspx");


        }
    }
}
