<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeBehind="admingallery.aspx.cs" Inherits="studioc1.admin.admingallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
<body>
<form runat="server">
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Add New Photo" 
    PostBackUrl="~/admin/adminmanagegallery.aspx" />

<div>
 
       


       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
        Width="80%" CellSpacing="2" CellPadding="8"
        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged"  >
        <Columns>
          
            <asp:BoundField DataField="imageid" HeaderText="IMAGE ID" SortExpression="imageid" />
            <asp:BoundField DataField="imagename" HeaderText="IMAGE NAME" SortExpression="imagename" />
            <asp:BoundField DataField="descriptions" HeaderText="DESCRIPTIONS" SortExpression="descriptions" />
           <%-- <asp:BoundField DataField="imagepath" HeaderText="IMAGE PATH" SortExpression="imagepath" />--%>


            <asp:TemplateField HeaderStyle-Width="20px"  ItemStyle-HorizontalAlign="Center">
                <ItemTemplate >
                    <img width="100" src="../img/Services/Big/<%#Eval("imagepath") %>" />
                </ItemTemplate>
           
            </asp:TemplateField>
           
           
            <%--<asp:BoundField DataField="Isdefault" HeaderText="Isdefault" SortExpression="Isdefault" />         --%>
            <asp:CheckBoxField DataField="Isactive" HeaderText="IsActive" SortExpression="IsActive" />
            <%--<asp:CheckBoxField DataField="isdelete" HeaderText="Isdelete" SortExpression="Isdelete" />--%>


            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="edit">
                        <a href="adminmanagegallery.aspx?id=<%#Eval("imageid") %>">Edit</a>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="detele">
                        <asp:LinkButton ID="LbtnDelete" runat="server" CommandArgument='<%#Eval("imageid") %>'
                            OnClientClick='return confirm("Are you sure you want to delete this record?")' OnClick="LbtnDelete_Click">
                            Delete</asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
            </asp:GridView>


</div>

</form>
</body>
</html>
</asp:Content>
