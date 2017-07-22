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
    public partial class managepackage : System.Web.UI.Page
    {
        studioDBDataContext db = new studioDBDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] == null)
                {
                    s1.Visible = true;
                    u1.Visible = false;
                }
                else
                {
                    var q = db.packagemsts.Where(x => x.packageid == Convert.ToInt32(Request.QueryString["id"])).FirstOrDefault();
                    TextBox1.Text = q.packageid.ToString();
                    ptypedrp.Text = q.packagetype;

                    pdesctb.Text= q.descriptions;
                    sdatetb.Text = q.startdate.ToString();
                    enddatetb.Text = q.enddate.ToString();
                    pricetb.Text = q.price.ToString();
                    CheckBox1.Checked = Convert.ToBoolean(q.isactive);
                                       
                 
                    s1.Visible =false ;
                    u1.Visible = true;
                }
            }

        }

        protected void s1_Click(object sender, EventArgs e)
        {
            string imgname = "";

            string dt1 = sdatetb.Text;
            string dt2 = enddatetb.Text;
          //  db.packageinsert(ptypedrp.Text, pdesctb.Text, pricetb.Text, DateTime.Parse(dt1), DateTime.Parse(dt2), true);

            //db.packageinsert(ptypedrp.Text,pdesctb.Text,Convert.ToInt32(pricetb.Text), DateTime.Parse(dt1), DateTime.Parse(dt2), true);
             try
            {
                if (FileUpload1.HasFile)
                {
                    imgname = Server.MapPath("../img/Services/Big/"+FileUpload1.FileName);
                    FileUpload1.PostedFile.SaveAs(imgname);
                  
                }
                db.packageinsert(ptypedrp.Text, pdesctb.Text, Convert.ToInt32(pricetb.Text), DateTime.Parse(dt1), DateTime.Parse(dt2), Convert.ToBoolean(CheckBox1.Checked), FileUpload1.FileName);
                 Response.Redirect("adminpackage.aspx");
             }
             catch(Exception)
                {

                }

        }

        protected void u1_Click(object sender, EventArgs e)
        {
           string dt1 = sdatetb.Text;
           string dt2 = enddatetb.Text;

           //db.updateimage(Convert.ToInt32(TextBox1.Text), phnametb.Text, detb.Text, phnametb.Text, Convert.ToBoolean(CheckBox1.Checked));
  //          else
    //        {
      //          if (FileUpload1.HasFile)
        //        {
          //          string imgpath1 = Server.MapPath("../img/services/Big/" + FileUpload1.FileName);
             //       FileUpload1.PostedFile.SaveAs(imgpath1);
               //     db.updateimage(Convert.ToInt32(TextBox1.Text), FileUpload1.FileName, detb.Text, FileUpload1.FileName, Convert.ToBoolean(CheckBox1.Checked));

                //}
            //}

           if (FileUpload1.FileName == null || FileUpload1.FileName == "")
           {
               //db.packageupdate(Convert.ToInt32(TextBox1.Text),ptypedrp.Text, pdesctb.Text, Convert.ToInt32(pricetb.Text), DateTime.Parse(dt1), DateTime.Parse(dt2));
               db.packageupdate(Convert.ToInt32(TextBox1.Text), ptypedrp.Text, pdesctb.Text, Convert.ToInt32(pricetb.Text), DateTime.Parse(dt1), DateTime.Parse(dt2),CheckBox1.Checked, FileUpload1.FileName);
           }

           else
           {
               if (FileUpload1.HasFile)
               {
                   string imgpath1 = Server.MapPath("../img/services/Big/" + FileUpload1.FileName);
                   FileUpload1.PostedFile.SaveAs(imgpath1);
                   db.packageupdate(Convert.ToInt32(TextBox1.Text), ptypedrp.Text, pdesctb.Text, Convert.ToInt32(pricetb.Text), DateTime.Parse(dt1), DateTime.Parse(dt2), CheckBox1.Checked,FileUpload1.FileName);
               }
           }
            

        
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}