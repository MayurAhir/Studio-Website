using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;

namespace studioc1
{
    public partial class changepass : System.Web.UI.Page
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
                    Response.Redirect("login.aspx");
                }
                else
                {
                    string uname = Request.Cookies["username"].Value;
                    List<changepassuser1Result> mdata = db.changepassuser1(uname, oldpassyb.Text.Trim()).ToList();


                    if (mdata.Count != 0)
                    {
                        db.changepassuser2(mdata[0].loginid, npasstb.Text.Trim());
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
