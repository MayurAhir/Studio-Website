<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeBehind="admindfeedback.aspx.cs" Inherits="studioc1.admin.admindfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
<body>
<%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/managefeedback.aspx">manage feedback</asp:HyperLink>--%>
<form runat="server">
  

   <asp:GridView ID="Gridfeedback" runat="server" AutoGenerateColumns="False"  
        Width="80%" CellSpacing="2" CellPadding="8"
        GridLines="None" 
       onselectedindexchanged="Gridfeedback_SelectedIndexChanged" >
        <Columns>
          
            <asp:BoundField DataField="feedbackid" HeaderText="FEEDBACK ID" SortExpression="feedbackid" />
            <asp:BoundField DataField="emailid" HeaderText="EMAIL ID" SortExpression="emailid" />
            <asp:BoundField DataField="username" HeaderText="USER NAME" SortExpression="username" />
            <asp:BoundField DataField="contactno" HeaderText="CONTACT NO" SortExpression="contactno" />
            <asp:BoundField DataField="feedbacktext" HeaderText="FEEDBACK TEXT" SortExpression="feedbacktext" />
            <asp:CheckBoxField DataField="Isactive" HeaderText="IsActive" SortExpression="IsActive" />
             <asp:CheckBoxField DataField="isactive" HeaderText="IsDelete" SortExpression="isdelete" />
            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="edit">
                        <a href="managefeedback.aspx?id=<%#Eval("feedbackid") %>">Edit</a>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <div class="detele">
                        <asp:LinkButton ID="LbtnDelete" runat="server" CommandArgument='<%#Eval("feedbackid") %>'
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
