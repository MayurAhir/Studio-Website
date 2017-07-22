<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeBehind="adminevent.aspx.cs" Inherits="studioc1.admin.adminevent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>

<body>
<form id="Form1" runat="server">
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Add New event" 
    PostBackUrl="~/admin/manageevent.aspx" />

<div>


<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
        Width="69%" CellSpacing="2" CellPadding="8"
        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" >
        <Columns>
          
            <asp:BoundField DataField="stypeid" HeaderText="SEVENTID" SortExpression="stypeid" />
           
            <asp:BoundField DataField="stypeimage" HeaderText="IMAGEPATH" SortExpression="stypeimage" />
          




             <asp:TemplateField HeaderStyle-Width="20px"  ItemStyle-HorizontalAlign="Center">
                <ItemTemplate >
                    <img width="100" src="../img/Services/Big/<%#Eval("stypeimage") %>" />
                </ItemTemplate>
            </asp:TemplateField>



            <asp:BoundField DataField="stypename" HeaderText="SEVENTNAME" SortExpression="stypename" />
            <asp:BoundField DataField="descriptions" HeaderText="DESCRIPTION" SortExpression="descriptions" />
            <asp:BoundField DataField="insertdate" HeaderText="INSERTED DATE" SortExpression="insertdate" />
            <asp:BoundField DataField="updatedate" HeaderText="UPDATED DATE" SortExpression="updatedate" />
           
            <asp:CheckBoxField DataField="isactive" HeaderText="IsActive" SortExpression="isactive" />
            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="edit">
                        <a href="manageevent.aspx?id=<%#Eval("stypeid") %>">Edit</a>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="detele">
                        <asp:LinkButton ID="LbtnDelete" runat="server" CommandArgument='<%#Eval("stypeid") %>'
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
