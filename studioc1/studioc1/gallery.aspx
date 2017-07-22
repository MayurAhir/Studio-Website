<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="studioc1.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <div class="bg-content">
<div id="mn">

    <form id="form1" runat="server">
<br />
<br />
<br />
<br />

&nbsp;&nbsp;<h2><i>&nbsp; Gallery</i></h2>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <h3>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Italic="True" ForeColor="#009999" 
            Text="Photos"></asp:Label>
    </h3>
    
            <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;   
             <asp:ImageButton ID="ImageButton1" runat="server" 
                 AlternateText="weddings images" Height="269px" ImageUrl="~/photos/caprese.jpg" 
                 Width="374px" />
                 
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:ImageButton ID="ImageButton2" runat="server" 
                 Height="263px" ImageUrl="~/photos/refreshment.jpg" Width="375px" />
                 
              &nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="279px" 
                 Width="365px" ImageUrl="~/photos/gourmandises.jpg" />--%>
        

        <div class="row">
            
            <ul class="gallery-list list-unstyled">
          
            <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>
                <li class="col-md-4" style="float:left;">
                    <div class="gal-item">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img class="img-responsive" src='../img/Services/Big/<%#Eval("imagepath")%>'  width="326px"/>
                        <a class="item-overlay" href='../img/Services/Big/<%#Eval("imagepath")%>' > 
                       
                        </a>
                         
                    </div>
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class="item-text text-center" style="text-align:center"> <%#Eval("imagename") %></span><br />
                   
                </li>
            </ItemTemplate>

            </asp:Repeater>
           
            </ul>
        </div>

        

                 
    
  
    <br />
    <br />
    <br />
    <br />
  <div class="list_carousel responsive" style="background-color: #000000">
                        <ul id="list_photos">
                            <li><img src="carousal/muffin.jpg" class="img-polaroid" width="500px" height="500px">  </li>
                            <li><img src="carousal/strawberries.jpg" class="img-polaroid"width="500px" height="500px">  </li>
                            <li><img src="carousal/cheesecake.jpg" class="img-polaroid"width="500px" height="500px">  </li>
                            <li><img src="carousal/peppers.jpg" class="img-polaroid"width="500px" height="500px">  </li>
                            <li><img src="carousal/pomengranates.jpg" class="img-polaroid"width="500px" height="500px">  </li>
                            <li><img src="carousal/refreshment.jpg" class="img-polaroid"width="500px" height="500px">  </li>
                            <li><img src="carousal/kitchen.jpg" class="img-polaroid"width="500px" height="500px">  </li>
                            <li><img src="carousal/soup.jpg" class="img-polaroid"width="500px" height="500px">  </li>                            
                        </ul>
                    </div> 
					

              
		
<script src="js/jquery.min.js" type="text/javascript"></script> 
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/default.js" type="text/javascript"></script>


<script src="carousel/jquery.carouFredSel-6.2.0-packed.js" type="text/javascript"></script><script type="text/javascript">                                                                                               $('#list_photos').carouFredSel({ responsive: true, width: '100%', scroll: 2, items: { width: 320, visible: { min: 2, max: 6}} });</script><script src="scripts/camera/scripts/camera.min.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
<script type="text/javascript">    function startCamera() { $('#camera_wrap').camera({ fx: 'scrollLeft', time: 2000, loader: 'none', playPause: false, navigation: true, height: '65%', pagination: true }); } $(function () { startCamera() });</script>

    </form>
    <br />
<br />
<br />
<br /><br />
<br />
<br />
<br /><br />
<br />
<br />
<br /><br />
<br />
<br />
<br /><br />
<br />
<br />
<br />
</div>
</div>

</asp:Content>


