using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;

namespace studioc1
{
    public partial class login : System.Web.UI.Page
    {
       // studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            //db.login_select(unametb.Text, passwordtb.Text);



            try
            {
                //List<aloginResult> adata = db.alogin(unamebtn.Text.Trim(), passwordbtn.Text.Trim()).ToList();

                List<changepassuser1Result> mdata = db.changepassuser1(unametb.Text.Trim(), passwordtb.Text.Trim()).ToList();
                if (mdata.Count != 0)
                {
                    Response.Cookies["username"].Value = mdata[0].username.ToString();
                    Response.Cookies["passwords"].Value = mdata[0].passwords.ToString();

                    Response.Redirect("Default.aspx");
                }


                else
                {
                    //  Console.Write("you are invalid admin");  

                }
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);

            }

        }

    }
}