<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeBehind="managefeedback.aspx.cs" Inherits="studioc1.admin.managefeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
<body>
<h2> manage feedbac</h2>
<br />
<br />
<br />
<div class="mb1">
<form runat="server">

<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label1" runat="server" Text="feedback text"></asp:Label>

<br />

<asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="67px" 
    Width="183px"></asp:TextBox>
<br />
<asp:CheckBox ID="CheckBox1" runat="server" Text="isactive" />
<br />
<asp:Button ID="s1" runat="server" Text="submit" onclick="s1_Click" />
<asp:Button ID="c1" runat="server" Text="cancel" />

</form>
</div>
</body>
</html>




</asp:Content>
