<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Package.aspx.cs" Inherits="studioc1.Package" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<br />

 <div class="bg-content">
 <div class="row">
            
            <ul class="gallery-list list-unstyled">
<br />
<br />
          
            <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">

            <ItemTemplate>
                <li class="col-md-4" style="float:left;">
                    <div class="gal-item">
                    <br />  &nbsp;&nbsp;&nbsp;&nbsp;<img class="img-responsive" src='../img/Services/Big/<%#Eval("imagepath")%>'  width="250px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <a class="item-overlay" href='../img/Services/Big/<%#Eval("imagepath")%>' >   </a>
                         
                    </div>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <span class="item-text text-center" style="text-align:center"> <%#Eval("packagetype") %></span><br />&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="item-text text-center" style="text-align:center"> <%#Eval("price") %></span><br />&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="item-text text-center" style="text-align:center"> <%#Eval("descriptions")%></span><br />&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="item-text text-center" style="text-align:center"> <%#Eval("startdate")%></span><br />&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="item-text text-center" style="text-align:center"> <%#Eval("enddate")%></span>
                </li>
                     
            </ItemTemplate>
           

            </asp:Repeater>
           
            </ul>
        </div>
<br />
<br />
        </div>

</asp:Content>
