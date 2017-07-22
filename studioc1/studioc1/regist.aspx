<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="regist.aspx.cs" Inherits="studioc1.regist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<!DOCTYPE html>
<html>
<head>
<title>Demo Beautiful Registration Form with HTML5 and CSS3</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="reg/style1.css" media="all" />
    <link rel="stylesheet" type="text/css" href="reg/demo1.css" media="all" />
</head>
<body >
<br />
<br />
<br />
<br />


<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
               
               
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
		<P class="ahir">REGISTRATION</P>
    	
      <div  class="form">
      		<form id="contactform" runat="server"> 
    			<p class="contact"><label for="name">First Name</label></p> 
    			<asp:TextBox ID="fnametb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="fnametb">*please enter firstname</asp:RequiredFieldValidator>
            
    			<p class="contact"><label for="email">Last Name</label></p>
                <asp:TextBox ID="lnametb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="lnametb">*please enter last name</asp:RequiredFieldValidator> 
            
    			
                <p class="contact"><label for="username">Date Of Birth</label></p> 
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*please select day" ControlToValidate="daydrp">*please select day</asp:RequiredFieldValidator>
            
            <asp:DropDownList ID="daydrp" runat="server">
                
                <asp:ListItem>day</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
               <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
               <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
               <asp:ListItem>26</asp:ListItem>
               <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
               <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
               <asp:ListItem>31</asp:ListItem>

                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*please select month" ControlToValidate="monthdrp"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="monthdrp" runat="server">
                <asp:ListItem>month</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                
                
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="*please select year" ControlToValidate="yeardrp">*please select year</asp:RequiredFieldValidator>
              <asp:DropDownList ID="yeardrp" runat="server">
                <asp:ListItem>year</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
  

                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
          
             <p class="contact"><label for="useraddress">User Address</label></p>
             <asp:TextBox ID="uaddresstb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                 ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="*please enter address" ControlToValidate="uaddresstb">*please enter address</asp:RequiredFieldValidator>
              <p class="contact"><label for="contact">Contactno</label></p>
             <asp:TextBox ID="contacttb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                 ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="*please enter contact no" ControlToValidate="contacttb">*please enter contact no</asp:RequiredFieldValidator>
               <p class="contact"><label for="emailid">Email Id</label></p>
             <asp:TextBox ID="emailtb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                 ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="*please enter email id" ControlToValidate="emailtb">*please enter email id</asp:RequiredFieldValidator>
               <p class="contact"><label for="country">Country</label></p>
            <asp:DropDownList ID="countrydrp" runat="server">
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>INDIA</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="*please select country" ControlToValidate="countrydrp">*please select country</asp:RequiredFieldValidator>
              <p class="contact"><label for="STATE">State</label></p>
             <asp:TextBox ID="statetb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                 ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="statetb">*please enter state</asp:RequiredFieldValidator>

               <p class="contact"><label for="city">City</label></p>
             <asp:TextBox ID="citytb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                 ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="*please enter city" ControlToValidate="citytb">*please enter city</asp:RequiredFieldValidator>

               <p class="contact"><label for="pincode">Pincode</label></p>
             <asp:TextBox ID="pintb" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                 ID="RequiredFieldValidator12" runat="server" ErrorMessage="*please enter pincode" ControlToValidate="pintb">*please enter pincode</asp:RequiredFieldValidator>
              <p class="contact"><label for="pincode">Package type</label></p>
              <asp:DropDownList ID="DropDownList1" runat="server">
                  <asp:ListItem>GOLDEN</asp:ListItem>
                  <asp:ListItem>SILVER</asp:ListItem>
                  <asp:ListItem>PLATINUM</asp:ListItem>
              </asp:DropDownList>
                   

               <p class="contact"><label for="username">Username</label></p>
             <asp:TextBox ID="usenametb" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"
                       ErrorMessage="*please enter username" ControlToValidate="usenametb">*please enter username</asp:RequiredFieldValidator>


               <p class="contact"><label for="password">Password</label></p>
               <asp:TextBox ID="passwordtb" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator
                   ID="RequiredFieldValidator14" runat="server" 
                    ErrorMessage="*please enter password" ControlToValidate="passwordtb">*please enter password</asp:RequiredFieldValidator>
            <br />

             
             
   
              <asp:Button ID="submitbtn" runat="server" Text="submit" 
                    onclick="submitbtn_Click"/> 
                
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="resetbtn" 
                    runat="server" Text="reset" />
   </form> 
          
</div>      
    
</div>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

</body>
</html>


</asp:Content>
