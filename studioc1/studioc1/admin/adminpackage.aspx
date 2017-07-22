<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeBehind="adminpackage.aspx.cs" Inherits="studioc1.admin.adminpackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
<body>
<form id="Form1" runat="server">
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Add New Package" 
    PostBackUrl="~/admin/managepackage.aspx" onclick="Button1_Click" />

<div>


<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
        Width="80%" CellSpacing="2" CellPadding="8" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" >
        <Columns>
           <%-- <asp:BoundField DataField="packageid" HeaderText="PACKAGE ID" SortExpression="packageid" />--%>
            <asp:BoundField DataField="packagetype" HeaderText="PACKAGE TYPE" SortExpression="packagetype" />
            <asp:BoundField DataField="descriptions" HeaderText="DESCRIPTIONS" SortExpression="descriptions" />
            <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="price" />
            <asp:BoundField DataField="startdate" HeaderText="START DATE" SortExpression="startdate" />
              <asp:BoundField DataField="enddate" HeaderText="END DATE" SortExpression="enddate" />
            <asp:CheckBoxField DataField="isactive" HeaderText="IsActive" SortExpression="isActive" />
         
            <asp:BoundField DataField="imagepath" HeaderText="IMAGEPATH" SortExpression="imagepath" />
            <asp:TemplateField HeaderStyle-Width="20px"  ItemStyle-HorizontalAlign="Center">
                <ItemTemplate >
                    <img width="100" src="../img/Services/Big/<%#Eval("imagepath") %>" />
                </ItemTemplate>
           
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="edit">
                        <a href="managepackage.aspx?id=<%#Eval("packageid") %>">Edit</a>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="detele">
                        <asp:LinkButton ID="LbtnDelete" runat="server" CommandArgument='<%#Eval("packageid") %>'
                            OnClientClick='return confirm("Are you sure you want to delete this Download link?")' OnClick="LbtnDelete_Click">
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
