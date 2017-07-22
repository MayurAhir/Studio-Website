<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eventbooking.aspx.cs" Inherits="studioc1.eventbooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<link rel="stylesheet" href="css/jquery-ui-1.10.4.custom.css">
  <link rel="stylesheet" href="css/jquery-ui-1.10.4.custom.min.css">
  <link rel="stylesheet" type="text/css" href="reg/style1.css" media="all" />
    <link rel="stylesheet" type="text/css" href="reg/demo1.css" media="all" />
    <script src="jquery-1.10.2.js" type="text/javascript"></script>

    <script src="jquery-ui-1.10.4.custom.js" type="text/javascript"></script>
<script type="text/jscript">


    $(function () {
        //alert("hi");
        $('.datepicker').datepicker({
    format: 'mm/dd/yyyy',
    startDate: '-3d'
})
    });
</script>




 


<div class="bg-content">
<br />
<br />
<br />
<br />
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
               
               
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
		<P class="ahir">EVENT BOOKING</P>
    	
      <div  class="form">
      		<form id="contactform" runat="server"> 
    			<p class="contact"><label for="ename">Event Name</label></p> 
    			<asp:TextBox ID="enametb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="enametb">*please enter event name</asp:RequiredFieldValidator>
            
    			<p class="contact"><label for="email">Address</label></p>
                <asp:TextBox ID="addtb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="addtb">*please enter address</asp:RequiredFieldValidator> 





             <p class="contact"><label for="STATE">Place</label></p>
             <asp:TextBox ID="placetb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                 ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="placetb">*please enter place</asp:RequiredFieldValidator>

                     <p class="contact"><label for="city">Emailid</label></p>
             <asp:TextBox ID="emailtb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                 ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="*please enter city" ControlToValidate="emailtb">*please enter emailid</asp:RequiredFieldValidator>

                    <p class="contact"><label for="contact">Contactno</label></p>
             <asp:TextBox ID="contacttb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                 ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="*please enter contact no" ControlToValidate="contacttb">*please enter contact no</asp:RequiredFieldValidator>

                    <br />


              <asp:DropDownList ID="DropDownList1" runat="server">
              </asp:DropDownList>
              <br />
                     
                 <div style="height:50px"> 
                <p class="contact"><label for="startdate">Start Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="sdatetb"  runat="server" class="datepicker" ></asp:TextBox>

                  </label>
            </p>
            </div>
              <div style="height:50px"> 
              <p class="contact"><label for="startdate">End Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="edatetb"  runat="server" class="datepicker"></asp:TextBox>

                  </label>
            </p>
              </div>
              <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  

              ESTIMATION AMOUNT: <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


              <br />
          
             
   
              <asp:Button ID="submitbtn" runat="server" Text="submit" 
                    onclick="submitbtn_Click"/>  
              <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:Button ID="resetbtn" 
                    runat="server" Text="reset" />
                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
   </form> 
          
</div>      
    
</div>


<br />

</div>



</asp:Content>
