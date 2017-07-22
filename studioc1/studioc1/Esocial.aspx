<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Esocial.aspx.cs" Inherits="studioc1.Esocial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<br />
<br />



<head>
<%--
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap1.min.css">
--%>           <link rel="stylesheet" href="assets/css/style1.css">

           <link rel="stylesheet" type="text/css" href="reg/style1.css" media="all" />
    <link rel="stylesheet" type="text/css" href="reg/demo1.css" media="all" />


</head>

 <!-- Latest Work -->
<%--<body>--%>
 <div class="bg-content">
  
 <%--<img src="assets/img/portfolio/work1.jpg" width="70%" />--%>





 <form id="frm1" method="post" runat="server">
 <br />
     <div class="portfolio container">
            <%--<div class="portfolio-title">--%>
                <h3 style="color:Green">Our Latest Work</h3>
            <%--</div>--%>
           <div class="xyz">
     <br />
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/eventbooking.aspx"><h1>click for booking</h1></asp:HyperLink>
    
    </div>
            <div class="row">
           
            
            <ul class="gallery-list list-unstyled">
          
            <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand" >

            <ItemTemplate>
                <li class="col-md-4" style="float:left;">
                    <div class="gal-item"><%--
                        <img class="img-responsive" src='../img/Services/Big/ <%#Eval("imagepath")%>'  width="250px"/>
                   --%>     
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img class="img-responsive" src='../img/Services/Big/<%#Eval("stypeimage")%>'  width="250px"/>
                   <a class="item-overlay" href='../img/Services/Big/<%#Eval("stypeimage")%>' > 
                       
                        </a>
                         
                    </div>
                    <span class="item-text text-center" style="text-align:center"> <%#Eval("stypename")%></span><br />
                   
                </li>
            </ItemTemplate>

            </asp:Repeater>
           
            </ul>
        </div>
         
               <%-- <div class="work span3">
                  
                        <img src="assets/img/portfolio/work1.jpg" alt="" />
                    <h4>social events</h4>
                    <p>get- together,class reunions kitty partty,bachelo partty,christmas party, new year event party,valentine's,msic concert</p>
                    <div class="icon-awesome">
                                      </div>
                  
                </div>
               
                
                <div class="work span3">
                    <img src="assets/img/portfolio/work2.jpg" alt="" />
                    <h4>feamily events</h4>
                    <p>baby shower,namig cermony/namkaran,baptism upanayanam,first birthday parties,anniversary,engagement ceremony,sangeet,wedding/marrige,reception</p>
                    <div class="icon-awesome">                        
                    </div>
                </div>
                </div>
                <div class="row">
               
                <div class="work span3">
                    <img src="assets/img/portfolio/work3.jpg" alt="" />
                    <h4>business events</h4>
                    <p>exhibition,conference,workshop,class,convocation,trade fair,trade show,product lunch,fashion show</p>
                    <div class="icon-awesome">
                       
                                       </div>
                </div>
               
               
                <div class="work span3">
                    <img src="assets/img/portfolio/work4.jpg" alt="" />
                    <h4>corporate events</h4>
                    <p>corporate parties,anual function,dealers meetings,hi-tea,project party,seminars,team building/outing</p>
                    <div class="icon-awesome">
                        
                                           </div>--%>
                </div>
            <%--</div>
            </div>--%>


     
            </form>

 <br />
 <br />

 
 <br />
 <br />
<div />
<%--</body>--%>





</asp:Content>