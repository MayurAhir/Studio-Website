<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="event1.aspx.cs" Inherits="studioc1.event1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />


    
           <link rel="stylesheet" href="assets/css/style1.css">



 <!-- Latest Work -->
 <html>
 <body>
 <div class="bg-content">
 <form id="frm1" method="post" runat="server" >
     <div class="portfolio container" >
     <br />
     <br />

          <%--  <div class="portfolio-title">--%>
                <h3 style="color:Green">Our Latest Work</h3>
            <%--</div>--%>
   
    <div class="xyz">
    
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/eventbooking.aspx"><h2>click for booking</h2></asp:HyperLink>
    
    </div>
   

            <div class="row">
                <div class="work span3">
                  
                        <img src="assets/img/portfolio/work1.jpg" alt="">
                    <h4>social events</h4>
                    <p>get- together,class reunions kitty partty,bachelo partty,christmas party, new year event party,valentine's,msic concert</p>
                    <div class="icon-awesome">
                       <%-- <a href="assets/img/portfolio/work1.jpg" rel="prettyPhoto"><i class="icon-search"></i></a>
                        <a href="portfolio.html"><i class="icon-link"></i></a>--%>
                            <%--<asp:HyperLink ID="HyperLink1" runat="server">family events</asp:HyperLink>--%>
                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Esocial.aspx?id=1">social events</asp:HyperLink>
                    </div>
                      
                </div>
                <div class="work span3">
                    <img src="assets/img/portfolio/work2.jpg" alt="">
                    <h4>feamily events</h4>
                    <p>baby shower,namig cermony/namkaran,baptism upanayanam,first birthday parties,anniversary,engagement ceremony,sangeet,wedding/marrige,reception</p>
                    <div class="icon-awesome">
                       <%-- <a href="assets/img/portfolio/work2.jpg" rel="prettyPhoto"><i class="icon-search"></i></a>
                        <a href="portfolio.html"><i class="icon-link"></i></a>--%>
                         <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Esocial.aspx?id=3">Efamily events</asp:HyperLink>
                         
                    </div>
                </div>
                <div class="work span3" >
                    <img src="assets/img/portfolio/work3.jpg" alt="">
                    <h4>business events</h4>
                    <p>exhibition,conference,workshop,class,convocation,trade show,product lunch,fashion show</p>
                    <div class="icon-awesome">
                       <%-- <a href="assets/img/portfolio/work3.jpg" rel="prettyPhoto"><i class="icon-search"></i></a>
                        <a href="portfolio.html"><i class="icon-link"></i></a>--%>
                          <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Esocial.aspx?id=4">business events</asp:HyperLink>
                    </div>
                </div>
                <div class="work span3">
                    <img src="assets/img/portfolio/work4.jpg" alt="">
                    <h4>corporate events</h4>
                    <p>corporate parties,anual function,dealers meetings,hi-tea,project party,seminars,team building/outing</p>
                    <div class="icon-awesome">
                       <%-- <a href="assets/img/portfolio/work4.jpg" rel="prettyPhoto"><i class="icon-search"></i></a>
                        <a href="portfolio.html"><i class="icon-link"></i></a>--%>
                          <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Esocial.aspx?id=2">corporate events</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        </form>

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
 <div />
</body>

</asp:Content>
