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
    public partial class repassword : System.Web.UI.Page
    {
        //studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitcbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (Request.Cookies["username"] == null)
                {
                    Response.Redirect("adminlogin .aspx");
                }
                else
                {
                    string uname = Request.Cookies["username"].Value;
                    List<aloginResult> adata = db.alogin(uname, oldpassyb.Text.Trim()).ToList();
                    if (adata.Count != 0)
                    {
                        db.passwordchange(adata[0].adminid, npasstb.Text.Trim());
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                       

                    }


                }
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);

            }





        }
    }
}
