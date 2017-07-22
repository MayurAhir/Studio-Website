<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeBehind="managepackage.aspx.cs" Inherits="studioc1.admin.managepackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
<head>
    <link href="css/calender/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />
    <link href="css/calender/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" type="text/css" />
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


</head>
<body>

<form runat="server">
<div class="mb1">
<h1><asp:Label ID="Label1" runat="server" Text="Manage Package"></asp:Label></h1>
    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
<br />

<asp:Label ID="Label2" runat="server" Text="Package Type"></asp:Label>
<br />
    <asp:DropDownList ID="ptypedrp" runat="server">
        <asp:ListItem>GOLDEN</asp:ListItem>
        <asp:ListItem>SILVER</asp:ListItem>
        <asp:ListItem>PLATINUME</asp:ListItem>
    </asp:DropDownList>
<br />
<asp:Label ID="Label3" runat="server" Text="Package Description"></asp:Label>
<br />

<asp:TextBox ID="pdesctb" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="pdesctb" ErrorMessage="*please enter description....." 
        ForeColor="Red"></asp:RequiredFieldValidator>
<br />
    <br />

    <asp:Label ID="Label5" runat="server" Text="Start Date"></asp:Label>
    <br />
    <asp:TextBox ID="sdatetb" runat="server" class="datepicker"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="sdatetb" ErrorMessage="*please enter startdate" 
        ForeColor="Red"></asp:RequiredFieldValidator>
     <br />
    <asp:Label ID="Label6" runat="server" Text="End Date"></asp:Label>
        <br />
    <asp:TextBox ID="enddatetb" runat="server" class="datepicker"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="enddatetb" ErrorMessage="*please enter enddate" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Package Price"></asp:Label>
    <br />
    <asp:TextBox ID="pricetb" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="pricetb" ErrorMessage="*please enter package price" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Gallery Image" Font-Italic="True" 
        Font-Size="Large"></asp:Label>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" onchange="ShowpImagePreview(this);" />
<br />
    <asp:CheckBox ID="CheckBox1" runat="server" Text="active" 
        oncheckedchanged="CheckBox1_CheckedChanged" />

    <br />
    <br />
   
    <asp:Button ID="s1" runat="server" Text="Submit" onclick="s1_Click" />

    <asp:Button ID="u1" runat="server" Text="Update" onclick="u1_Click" />

    <asp:Button ID="c1" runat="server" Text="Cancel" />

</div>
</form>

</body>
<script src="cal/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
</html>
</asp:Content>
