<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin .aspx.cs" Inherits="studioc1.admin.adminlogin" %>

<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title>AdminLTE | Log in</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <%--  <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
--%>

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

        <!-- font Awesome -->
        <%-- <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css" />--%>
       
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->

    <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
        <%--  <link href="../../css/AdminLTE.css" rel="stylesheet" type="text/css" />
--%>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="bg-black">

        <div class="form-box" id="login-box">
            <div class="header">Sign In</div>
            <form  method="post" runat="server">
                <div class="body bg-gray">
                    <div class="form-group">
                        

      <asp:Label ID="Label1" runat="server" Text="USERNAME"></asp:Label>  <asp:TextBox ID="unamebtn" runat="server"></asp:TextBox><br />
                      
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*please enter username" 
                            ControlToValidate="unamebtn" ForeColor="Red">*please enter username</asp:RequiredFieldValidator>

                       <%-- <input type="text" name="userid" class="form-control" placeholder="User ID"/>--%>
                    </div>
                    <div class="form-group">

          <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>    <asp:TextBox ID="passwordbtn" runat="server" TextMode="Password"></asp:TextBox><br />
                                       
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*please enter password" 
                            ControlToValidate="passwordbtn" ForeColor="Red">*please enter password</asp:RequiredFieldValidator>

                        <%--<input type="password" name="password" class="form-control" placeholder="Password"/>--%>
                    </div>          
                    <div class="form-group">
                    </div>
                </div>
    
                <div class="footer">                                                               
                    <%-- <button type="submit" class="btn bg-olive btn-block">Sign me in</button> --%> 
                    <asp:Button ID="submit1" runat="server" Text="submit" onclick="submit1_Click" />
                    <%-- 
                    <p><a href="#">I forgot my password</a></p>
                    
                    <a href="register.html" class="text-center">Register a new membership</a>--%>
                </div>
            </form>

          <%--  <div class="margin text-center">
                <span>Sign in using social networks</span>
                <br/>
                <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
                <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
                <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>

            </div>--%>
        </div>


        <!-- jQuery 2.0.2 -->
    
        <!-- Bootstrap -->
       <%-- <script src="../../js/bootstrap.min.js" type="text/javascript"></script>--%>        

        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
