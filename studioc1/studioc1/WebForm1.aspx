<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="studioc1.WebForm1" %>

<html>
<style type="text/css">
    .newStyle1
    {
        position: absolute;
    }
    .newStyle2
    {
        position: absolute;
        top: 119px;
        left: 898px;
    }
</style>

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />


<head>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap1.min.css">
           <link rel="stylesheet" href="assets/css/style1.css">

           <link rel="stylesheet" type="text/css" href="reg/style1.css" media="all" />
    <link rel="stylesheet" type="text/css" href="reg/demo1.css" media="all" />


</head>

 <!-- Latest Work -->
 <body> 
 <img src="assets/img/portfolio/work1.jpg" width="100%" />

 <form id="frm1" method="post" runat="server">
 <br />
     <div class="portfolio container">
            <div class="portfolio-title">
                <h3>Our Latest Work</h3>
            </div>
            <div class="row">
                <div class="work span3">
                  
                        <img src="assets/img/portfolio/work1.jpg" alt="" />
                       
                            
                    <h4>social events</h4>
                    <p>get- together,class reunions kitty partty,bachelo partty,christmas party, new year event party,valentine's,msic concert</p>
                    <div class="icon-awesome">
                       <%-- <a href="assets/img/portfolio/work1.jpg" rel="prettyPhoto"><i class="icon-search"></i></a>
                        <a href="portfolio.html"><i class="icon-link"></i></a>--%>
                            <%--<asp:HyperLink ID="HyperLink1" runat="server">family events</asp:HyperLink>--%>
                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Efamily.aspx">social events</asp:HyperLink>
                    </div>
                 

                </div>
                

                <div class="work span3">
                    <img src="assets/img/portfolio/work2.jpg" alt="" />
                    <h4>feamily events</h4>
                    <p>baby shower,namig cermony/namkaran,baptism upanayanam,first birthday parties,anniversary,engagement ceremony,sangeet,wedding/marrige,reception</p>
                    <div class="icon-awesome">
                       <%-- <a href="assets/img/portfolio/work2.jpg" rel="prettyPhoto"><i class="icon-search"></i></a>
                        <a href="portfolio.html"><i class="icon-link"></i></a>--%>
                         
                    </div>
                </div>
                </div>
                <div class="row">
               
                <div class="work span3">
                    <img src="assets/img/portfolio/work3.jpg" alt="" />
                    <h4>business events</h4>
                    <p>exhibition,conference,workshop,class,convocation,trade fair,trade show,product lunch,fashion show</p>
                    <div class="icon-awesome">
                        <a href="assets/img/portfolio/work3.jpg" rel="prettyPhoto"><i class="icon-search"></i></a>
                        <a href="portfolio.html"><i class="icon-link"></i></a>
                          <asp:HyperLink ID="HyperLink3" runat="server">business events</asp:HyperLink>
                    </div>
                </div>
               
               
                <div class="work span3">
                    <img src="assets/img/portfolio/work4.jpg" alt="" />
                    <h4>corporate events</h4>
                    <p>corporate parties,anual function,dealers meetings,hi-tea,project party,seminars,team building/outing</p>
                    <div class="icon-awesome">
                        <a href="assets/img/portfolio/work4.jpg" rel="prettyPhoto"><i class="icon-search"></i></a>
                        <a href="portfolio.html"><i class="icon-link"></i></a>
                          <asp:HyperLink ID="HyperLink4" runat="server">corporate events</asp:HyperLink>
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


</body>

</html>


