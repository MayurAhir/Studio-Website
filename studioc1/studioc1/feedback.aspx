<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="studioc1.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <div class="bg-content">
<div id="d1">
<div class="MBA">
<br />
<br />
<br />
<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h2>FEEDBACK</h2>

<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
               
               
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			
      <div  class="form">
    		<form id="contactform" runat="server"> 
    			<p class="contact"><label for="Username">Username</label> 
    			<asp:TextBox ID="unametb" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="*please enter user name" ForeColor="Red" 
                        ControlToValidate="unametb">*please enter user name</asp:RequiredFieldValidator>
                             
      			</p> 
                             
      			<p class="contact"><label for="Emailid">Emailid</label>
                <asp:TextBox ID="emailtb" runat="server"></asp:TextBox> 
    			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="*please enter emailid" ForeColor="Red" 
                        ControlToValidate="emailtb">*please enter emailid</asp:RequiredFieldValidator>
                </p>
                
             <p class="contact"><label for="Contact">Contactno</label>
             <asp:TextBox ID="contacttb" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="*please enter contactno" ForeColor="Red" 
                     ControlToValidate="contacttb">*please enter contactno</asp:RequiredFieldValidator>
             </p>
              <p class="contact"><label for="Message">Message</label>
             <asp:TextBox ID="messagetb" runat="server" TextMode="MultiLine" BorderStyle="None" 
                      Height="104px" Width="308px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="*please enter message" ForeColor="Red" 
                      ControlToValidate="messagetb">*please enter message</asp:RequiredFieldValidator>
             
             </p>
               

              <asp:Button ID="sendbtn" runat="server" Text="send" onclick="sendbtn_Click"/> 
                
        
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="clearbtn" runat="server" 
                    Text="clear" />
   </form> 
          
</div>      
    
</div>
</div>
</div>
</div>
</asp:Content>
