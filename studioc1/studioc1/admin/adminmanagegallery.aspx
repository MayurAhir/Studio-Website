<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeBehind="adminmanagegallery.aspx.cs" Inherits="studioc1.admin.adminmanagegallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<script type="text/javascript">
    //alert("hi");
    function ShowpImagePreview(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                alert(e.target.result);
                $('.nimg').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    </script>

<html>
<head>

<link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br />
<br />


<form runat="server">
<div class="mb1">
<asp:Label ID="Label1" runat="server" Text="Manage gallery" Font-Bold="True" 
    Font-Italic="True" Font-Size="X-Large"></asp:Label>
<br />
    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
<br />

<asp:Label ID="Label2" runat="server" Text="Photo Name" Font-Italic="True" 
        Font-Size="Large"></asp:Label>

<br />
<asp:TextBox ID="phnametb" runat="server"></asp:TextBox>

<br />
<asp:Label ID="Label4" runat="server" Text="Description" Font-Italic="True" 
        Font-Size="Large"></asp:Label>

<br />
<asp:TextBox ID="detb" runat="server"></asp:TextBox>

<br />
<asp:Label ID="Label3" runat="server" Text="Gallery Image" Font-Italic="True" 
        Font-Size="Large"></asp:Label>
<br />
<asp:Image ID="Image1" CssClass="nimg" Visible="false" runat="server" Height="130px" Width="236px" />
<br />
   

<br />
<br />

<asp:FileUpload ID="FileUpload1" runat="server" onchange="ShowpImagePreview(this);" />
<br />
    <asp:CheckBox ID="CheckBox1" runat="server" Text="active" />
<br />
<br />

<asp:Button ID="submit1" runat="server" Text="Submit" onclick="submit1_Click" />
    <asp:Button ID="u1" runat="server" Text="update" onclick="u1_Click" />
<asp:Button ID="cancel" runat="server" Text="Cancel" />
</div>
</form>

</body>
</html>
</asp:Content>
