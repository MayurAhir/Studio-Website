<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="studioc1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<%--<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>login</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>--%>
  <html>
  <body style="background-color:Black">  
  <br />
<br />
<br />

    <div class="container">

      <form id="Form1" class="form-signin"  runat="server" >
        <h2 class="form-signin-heading">Please sign in</h2>
      <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
      <asp:TextBox ID="unametb" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*please enter username" ControlToValidate="unametb" 
            ForeColor="Red">*please enter username</asp:RequiredFieldValidator>
      
        <br />
      
      <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
      <asp:TextBox ID="passwordtb" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="*please enter pssword" ControlToValidate="passwordtb" 
            ForeColor="Red">*please enter pssword</asp:RequiredFieldValidator>
          
      <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="loginbtn" runat="server" Text="login" 
            onclick="loginbtn_Click" />
        <br />
      
      <h2><asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#66CCFF" 
            NavigateUrl="~/regist.aspx">for new user</asp:HyperLink></h2>
             
              <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#66CCFF" 
            NavigateUrl="~/changepass.aspx">change password</asp:HyperLink>
      </form>

     
    </div> 

      
   </body>

   </html>

</asp:Content>


