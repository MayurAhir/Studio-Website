<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeBehind="admincontact.aspx.cs" Inherits="studioc1.admin.admincontact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
<body>


<form runat="server">



<asp:GridView ID="Gridcontact" runat="server" AutoGenerateColumns="False"  
        Width="90%" CellSpacing="2" CellPadding="8"
        GridLines="None" 
    onselectedindexchanged="Gridcontact_SelectedIndexChanged" >
        <Columns>
          
            <asp:BoundField DataField="contactid" HeaderText="CONTACT ID" SortExpression="contactid" />
            <asp:BoundField DataField="username" HeaderText="USER NAME" SortExpression="username" />
            <asp:BoundField DataField="contactno" HeaderText="CONTACT NO" SortExpression="contactno" />
            <asp:BoundField DataField="emailid" HeaderText="EMAIL ID" SortExpression="emailid" />
            <asp:BoundField DataField="messages" HeaderText="MESSAGES" SortExpression="messages" /> 
            <asp:CheckBoxField DataField="isactive" HeaderText="IsActive" SortExpression="isactive" />
            <asp:CheckBoxField DataField="isdelete" HeaderText="IsDelete" SortExpression="isdelete" />
            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="edit">
                        <a href="#?id=<%#Eval("contactid") %>">Edit</a>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="detele">
                        <asp:LinkButton ID="LbtnDelete" runat="server" CommandArgument='<%#Eval("contactid") %>'
                            OnClientClick='return confirm("Are you sure you want to delete this Download link?")' OnClick="LbtnDelete_Click">
                            Delete</asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
       
    </asp:GridView>



</form>
</body>
</html>
</asp:Content>
