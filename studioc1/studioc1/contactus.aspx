<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="studioc1.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

  <!--Google analytics code-->	  
	  <script type="text/javascript">
	      var _gaq = _gaq || [];
	      _gaq.push(['_setAccount', 'UA-29231762-1']);
	      _gaq.push(['_setDomainName', 'dzyngiri.com']);
	      _gaq.push(['_trackPageview']);

	      (function () {
	          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	      })();
      </script>
	<br />

<div class="bg-content"> 	<br />	<br />
      <!-- content -->
      <div id="content"><div class="ic"></div>
    <div class="container">
          <div class="row">
        <article class="span8">
              <h3>Contact us</h3>
              <div class="inner-1">
            <form id="Form1" runat="server">
                  
                  <fieldset>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Label">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="*please enter your name" ForeColor="Red" 
                        ControlToValidate="TextBox1">*please enter your name</asp:RequiredFieldValidator>
                  <br>
                    
                    </div>
                  <div>
                    <asp:Label ID="Label2" runat="server" Text="Label">Contactno&nbsp;&nbsp;&nbsp;</asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="194px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="*please enter your contactno" ForeColor="Red" 
                          ControlToValidate="TextBox2">*please enter your contactno</asp:RequiredFieldValidator>
                    <br>
                   
                    </div>
                <div>
                    <asp:Label ID="Label3" runat="server" Text="Label">EmailId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Width="199px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="*please enter your emailid" ForeColor="Red" 
                        ControlToValidate="TextBox3">*please enter your emailid</asp:RequiredFieldValidator>
                    <br>
                    
                    </div>
                <div>
                    <asp:Label ID="Label4" runat="server" Text="Label">Message&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" BorderStyle="None" 
                        TextMode="MultiLine" Height="90px" Width="186px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="*please enter your message" ForeColor="Red" 
                        ControlToValidate="TextBox3">*please enter your message</asp:RequiredFieldValidator>
                    <br>
                    
                    </div>
                 <asp:Button    ID="sendbtn" runat="server" Text="Send" onclick="sendbtn_Click"></asp:Button>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="Button1" runat="server" Text="Clear"></asp:Button>
                
              </fieldset>
                </form>
          </div>
            </article>
        <article class="span4">
              <h3>Contact info</h3>
              <div class="map">
            <a href="http://dribbble.com/shots/624850-Presentaion-image-1" target="_blank"><img src="img/map.jpg" alt="Location on Map" /></a>
          </div>
              <address class="address-1">
          <strong>v s patel collage bilimora,<br/>
              gauharbag,<br/>
              Ta:gandevi,<br />
              Dist:navsari.</strong>
          <div class="overflow"> <span>Mobile:</span>+91 12345 67890<br>
                <span>Telephone:</span>+91 12345 67890<br>
                <span>FAX:</span>+91 12345 67890 <br>
                <span>E-mail:</span> <a href="#" class="mail-1">you@domain.com</a><br>
                <span>Skype:</span> <a href="#" class="mail-1">@woohooo</a></div>
          </address>
            </article>
      </div>
        </div>
  </div>
    </div>

</asp:Content>

