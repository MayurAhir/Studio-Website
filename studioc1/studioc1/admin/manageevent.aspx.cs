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
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Drawing;
using System.Drawing.Imaging;

namespace studioc1.admin
{
    public partial class manageevent : System.Web.UI.Page
    {


      //  SqlDataReader ddDR = null;
       
      // SqlConnection con = new SqlConnection("Server=MAYUR-PC; Database=studiocomplete; User ID=MAYUR-PC/MAYUR;Password=;Trusted_Connection=False;");
       
       
         
        //studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            //textfill();

            if (!Page.IsPostBack)
            {
              
               
                FillDropDownList();




                if (Request.QueryString["id"] == null)
                {
                    s1.Visible = true;
                    u1.Visible = false;
                }
                else
                {
                    var q = db.eventsubtypes.Where(x => x.stypeid == Convert.ToInt32(Request.QueryString["id"])).FirstOrDefault();
                    TextBox2.Text = q.stypeid.ToString();
                    //FileUpload1.FileName = q.imagepath.ToString();
                   
                    sdatetb.Text = q.stypename;
                    DETB.Text = q.descriptions;
                    CheckBox1.Checked = Convert.ToBoolean(q.isactive);

                    //var p = db.eventtypes.Where(y => y.etypeid == Convert.ToInt32(Request.QueryString["id"])).FirstOrDefault();
                    //DropDownList1. DataTextField  = p.eventname;    
                    //DropDownList1.DataBind();
                    s1.Visible = false; ;
                    u1.Visible = true;
                }
            }



        }
        public void FillDropDownList()
        {
            //List<subeventselect_spResult> ddlist = db.selecteventmain_sp.ToList();
            List<selecteventmain_spResult> ddlist = db.selecteventmain_sp().ToList();
            
            for (int i = 0; i < ddlist.Count; i++)
            {
                DropDownList1.Items.Insert(0, new ListItem { Text = ddlist[i].eventname, Value = ddlist[i].etypeid.ToString() });
                
              
            }
        }


        protected void u1_Click(object sender, EventArgs e)
        {
           

            if (FileUpload1.FileName == null || FileUpload1.FileName == "")
            {
                //db.update_subevent(Convert.ToInt32(TextBox1.Text), FileUpload1.FileName, ename.Text, DateTime.Parse(dt1), DateTime.Parse(dt2), eplace.Text, citytb.Text, statetb.Text, countrytb.Text, contacttb.Text, statustb.Text);
                db.update_subevent(Convert.ToInt32(TextBox2.Text), sdatetb.Text, FileUpload1.FileName, DETB.Text);

            }
            else
            {

                if (FileUpload1.HasFile)
                {
                    string imgpath1 = Server.MapPath("../img/services/Big/" + FileUpload1.FileName);
                    FileUpload1.PostedFile.SaveAs(imgpath1);
                  
                    //db.updateevent(Convert.ToInt32(TextBox1.Text), FileUpload1.FileName, ename.Text, DateTime.Parse(dt1), DateTime.Parse(dt2), eplace.Text, citytb.Text, statetb.Text, countrytb.Text, contacttb.Text, statustb.Text);
                    db.update_subevent(Convert.ToInt32(TextBox2.Text), sdatetb.Text, FileUpload1.FileName, DETB.Text);
                }

            }

            //db.updateevent(Convert.ToInt32(TextBox1.Text), FileUpload1.FileName, ename.Text, DateTime.Parse(dt1), DateTime.Parse(dt2), eplace.Text, citytb.Text, statetb.Text, countrytb.Text, contacttb.Text, statustb.Text);

            db.update_subevent(Convert.ToInt32(TextBox2.Text), sdatetb.Text, FileUpload1.FileName, DETB.Text);
            Response.Redirect("adminevent.aspx");
        }

        protected void s1_Click(object sender, EventArgs e)
        {
            //string dt1 = sdatetb.Text;
            //string dt2 = edatetb.Text;
            string imgname = "";
            //int? imgid = 0;

            try
            {
                if (FileUpload1.HasFile)
                {
                    imgname = Server.MapPath("../img/Services/Big/" + FileUpload1.FileName);
                    FileUpload1.PostedFile.SaveAs(imgname);

                }

                //db.insertevnt(imgname,ename.Text,DateTime.Parse(dt1),DateTime.Parse(dt2),eplace.Text,citytb.Text,statetb.Text,contacttb.Text,statustb.Text);
                //db.insertevnt(FileUpload1.FileName, ename.Text, DateTime.Parse(dt1), DateTime.Parse(dt2), eplace.Text, citytb.Text, statetb.Text, countrytb.Text, contacttb.Text, statustb.Text);
                //db.eventsub_sp(TextBox1.Text, sdatetb.Text, FileUpload1.FileName, DETB.Text, Convert.ToBoolean(CheckBox1.Checked));
                db.eventsub_sp(Convert.ToInt32(DropDownList1.SelectedValue), sdatetb.Text, FileUpload1.FileName, DETB.Text, Convert.ToBoolean(CheckBox1.Checked));



                Response.Redirect("adminevent.aspx");
            }
            catch (Exception)
            {

            }

        }

    }
}
       

       

