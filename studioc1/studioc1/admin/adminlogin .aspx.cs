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
    public partial class adminlogin : System.Web.UI.Page
    {
        //studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit1_Click(object sender, EventArgs e)
        {
            try
            {
                List<aloginResult> adata = db.alogin(unamebtn.Text.Trim(), passwordbtn.Text.Trim()).ToList();

                if (adata.Count != 0)
                {
                    Response.Cookies["username"].Value = adata[0].username.ToString();
                    Response.Cookies["passwords"].Value = adata[0].passwords.ToString();

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