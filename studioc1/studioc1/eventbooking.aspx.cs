using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using studioc1.data;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Drawing;
using System.Drawing.Imaging;



namespace studioc1
{
    public partial class eventbooking : System.Web.UI.Page
    {
        //studioDBDataContext db = new studioDBDataContext();
        studDataContext db = new studDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!Page.IsPostBack)
            {


                FillDropDownList();
               

            }

        }




        public void FillDropDownList()
        {

            List<eventbookingprice_spResult> pp1 = db.eventbookingprice_sp().ToList();

            for (int i = 0; i < pp1.Count; i++)
            {
                DropDownList1.Items.Insert(0, new ListItem { Text = pp1[i].packagetype, Value =pp1[i].packageid.ToString() });


            }
        }
        protected void submitbtn_Click(object sender, EventArgs e)
        {
            //string dt1 = sdatetb.Text;
            //string dt2 = edatetb.Text;
           

           //db.eventbookingsp(enametb.Text, addtb.Text, placetb.Text, DateTime.Parse(dt1), DateTime.Parse(dt2),DateTime.Parse(dt3),Convert.ToInt32(contacttb.Text),emailtb.Text,'true');
           
            
          //db.eventbookingsp(enametb.Text,addtb.Text,placetb.Text,DateTime.Parse(dt1),DateTime.Parse(dt2),Convert.ToInt32(contacttb.Text),emailtb.Text,'true');
          
            
           // db.eventbookingsp(enametb.Text,addtb.Text,placetb.Text,DateTime.Parse(dt1),DateTime.Parse(dt2),Convert.ToInt32(contacttb.Text),emailtb.Text,'true');

            
           //db.eventbookingsp(Convert.ToInt32(DropDownList1.SelectedValue),enametb.Text, addtb.Text, placetb.Text, Convert.ToDateTime(sdatetb.Text), Convert.ToDateTime(edatetb.Text), contacttb.Text, emailtb.Text, true);

           fillprice();
           
         

        }
        public void fillprice()
        {
            
            
            List<pricedynamic_spResult> eprice = db.pricedynamic_sp(Convert.ToInt32(DropDownList1.SelectedValue)).ToList();

            
           TextBox3.Text= eprice[0].price.ToString();
          
            
     var x1 = Convert.ToInt32(TextBox3.Text);
           //Label1.Text = ab.ToString();


           string d1 = sdatetb.Text;
           string d2 = edatetb.Text;
           //string result;

           int sincelast = (Convert.ToDateTime(d2)  -  Convert.ToDateTime (d1)).Days;

           //TextBox2.Text = sincelast.ToString().Trim().TrimEnd();
    // var y1 = Convert.ToInt32(TextBox2.Text);

     Label1.Text = Convert.ToString(((Convert.ToInt32(x1)) * (Convert.ToInt32(sincelast))));

        
        }

       
    }

}
