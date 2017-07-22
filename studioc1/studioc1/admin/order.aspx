<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="studioc1.admin.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
<body>
<form id="Form1" runat="server">
<br />
<br />

<div>


<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
        Width="80%" CellSpacing="2" CellPadding="8"  >
        <Columns>
            <%--<asp:BoundField DataField="obid" HeaderText="ORDER ID" SortExpression="obid" />--%>
            <asp:BoundField DataField="name" HeaderText="EVENT NAME" SortExpression="name" />
            <asp:BoundField DataField="address1" HeaderText="ADDRESS" SortExpression="address1" />
            <asp:BoundField DataField="place" HeaderText="PLACE" SortExpression="place" />
            <asp:BoundField DataField="startdate" HeaderText="START DATE" SortExpression="startdate" />
              <asp:BoundField DataField="enddate" HeaderText="END DATE" SortExpression="enddate" />
               <asp:BoundField DataField="currentdt" HeaderText="CURRENT DATE" SortExpression="currentdt" />
                <asp:BoundField DataField="contactno" HeaderText="CONTACT NO" SortExpression="contactno" />
                <asp:BoundField DataField="emailid" HeaderText="EMAIL" SortExpression="emailid" />
                
              
           <%-- <asp:CheckBoxField DataField="isactive" HeaderText="IsActive" SortExpression="isActive" />--%>
         
          <%--  <asp:BoundField DataField="imagepath" HeaderText="IMAGEPATH" SortExpression="imagepath" />
           <%-- <asp:TemplateField HeaderStyle-Width="20px"  ItemStyle-HorizontalAlign="Center">--%>
               <%-- <ItemTemplate >
                    <img width="100" src="../img/Services/Big/<%#Eval("obid") %>" />
                </ItemTemplate>
           
            </asp:TemplateField>--%>
          <%--  <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="edit">
                        <a href="managepackage.aspx?id=<%#Eval("packageid") %>">Edit</a>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="detele">
                        <asp:LinkButton ID="LbtnDelete" runat="server" CommandArgument='<%#Eval("obid") %>'
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
