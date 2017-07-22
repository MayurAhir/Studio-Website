<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="studioc1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
home
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <br />
<br />
 <div class="bg-content">
      <div class="container">
    <div class="row">
          <div class="span12"> 
        <!-- slider -->
        <div class="flexslider">
              <ul class="slides">


             <%--  <div class="gal-item">
                        <img class="img-responsive" src='../img/Services/Big/<%#Eval("imagepath")%>' height="426px" width="426px"/>
                        <a class="item-overlay" href='../img/Services/Big/<%#Eval("imagepath")%>' > 
                        <span class="item-text text-center"> <%#Eval("imagename") %></span>
                        </a>
                    </div>
--%>
            <li> <img src="assets/img/portfolio/work1.jpg" alt="" > </li>
            <li> <img src="assets/img/portfolio/work2.jpg" alt="" > </li>
            <li> <img src="assets/img/portfolio/work3.jpg" alt="" > </li>
            <li> <img src="assets/img/portfolio/work4.jpg" > </li>
             <li> <img src="assets/img/portfolio/work5.jpg" > </li>
            
          </ul>
            </div>
        <span id="responsiveFlag"></span>
       
      </div>
        </div>
  </div>
      
      <!-- content -->
      
      <div id="content" class="content-extra"><div class="ic"></div>
    <div class="row-1">
        <div class="container">
    		<div class="row">
        <article class="span12">
        <h4>Our Work</h4>
         </article>
        <div class="clear"></div>
         <ul class="portfolio clearfix">           
           <li class="box"><a href="img/wedding/1.jpg"  class="magnifier" >
               <img src="img/wedding/1.jpg" width="200px" height="200px"/></a></li> 
           <li class="box"><a href="img/wedding/2.jpg" class="magnifier" ><img alt="" src="img/wedding/2.jpg" width="200px" height="200px"></a></li> 
           <li class="box"><a href="img/wedding/3.jpg" class="magnifier" ><img alt="" src="img/wedding/3.jpg" width="200px" height="200px"></a></li> 
           <li class="box"><a href="img/wedding/4.jpg" class="magnifier" ><img alt="" src="img/wedding/4.jpg" width="200px" height="200px"></a></li> 
           <li class="box"><a href="img/wedding/5.jpg" class="magnifier" ><img alt="" src="img/wedding/5.jpg" width="200px" height="200px"></a></li> 
           <li class="box"><a href="img/wedding/6.jpg" class="magnifier" ><img alt="" src="img/wedding/6.jpg" width="200px" height="200px"></a></li> 
           <li class="box"><a href="img/wedding/7.jpg" class="magnifier" ><img alt="" src="img/wedding/7.jpg" width="200px" height="200px"></a></li> 
           <li class="box"><a href="img/wedding/8.jpg" class="magnifier" ><img alt="" src="img/wedding/8.jpg" width="200px" height="200px"></a></li>                       
         </ul> 
      </div>
     	</div>
    </div>
    
  
    
    <div class="container">
          <div class="row">
        <article class="span6">
              <h3>Shortly about us</h3>
              <div class="wrapper">
            <figure class="img-indent"><img src="img/15.jpg " alt="" /></figure>
            <div class="inner-1 overflow extra">
                  <div class="txt-1">Mauris scelerisque odio quis leo viverra ac porttitor sem blandit. Sed tincidunt mattis varius. Nunc sodales ipsum nisl, eget lacinia nibh.</div>
                  Cras lacus tortor, tempus vitae porta nec, hendrerit id dolor. Nam volutpat gravida porta. Suspendisse turpis nibh, volutpat. 
                </div>
          </div>
            </article>
       
      </div>
        </div>
  </div>
    </div>
   
</asp:Content>

