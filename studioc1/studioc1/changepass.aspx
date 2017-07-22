<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepass.aspx.cs" Inherits="studioc1.changepass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link href="admin/password/demo1.css" rel="stylesheet" type="text/css" />
    <link href="admin/password/style1.css" rel="stylesheet" type="text/css" />
    
</head>
<body  style="background-image:bg-content.jpg">

    <br />
<br />
<br />
<br />
    

<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
               
               
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			
      <div  class="form">
    		<form id="contactform" runat="server"> 
    			<p class="contact"><label for="password">CURRENT PASSWORD</label></p> 
    			<asp:TextBox ID="oldpassyb" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*please enter your current password" ControlToValidate="oldpassyb" 
                    ForeColor="Red">*please enter your current password</asp:RequiredFieldValidator>
                
    			<p class="contact"><label for="npassword">NEW PASSWORD</label></p>
                <asp:TextBox ID="npasstb" runat="server" TextMode="Password"></asp:TextBox> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*please enter your new password" ControlToValidate="npasstb" 
                    ForeColor="Red">*please enter your new password</asp:RequiredFieldValidator>
                
                <p class="contact"><label for="cnpassword">CONFIRM NEW PASSWORD</label></p>
                <asp:Label ID="Label1" runat="server"  ></asp:Label>
                <asp:TextBox ID="cnfpasstb" runat="server" TextMode="Password"></asp:TextBox> 
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="*please re-enter your new password" ControlToCompare="npasstb" 
                    ControlToValidate="cnfpasstb" ForeColor="Red">*please re-enter new password</asp:CompareValidator><br />
                    <br />

           <div>     
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button  
                   ID="submitcbtn" runat="server"  Text="submit" onclick="submitcbtn_Click"  />
                  
                 
               &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="reset1" runat="server" Text="reset" />   
                 
                 
          </div>
   </form> 
          
</div>      
    
</div>


</body>
</html>

