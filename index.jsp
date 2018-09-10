<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 
    <head>
       <%@include  file="masterpages/my.jsp"%> 
       <style>
           .sec{
               background-color: white;
               opacity: 1;
           }
            p{
                color: #000033;
                font-size: 17px;
            }
       </style>
    </head>

    <body>
        <div class="container-fluid outer">
            <!-- Header div open-->
            <%@include  file="masterpages/header.jsp"%>
            <!-- Header div close-->

            <!-- Slider div open-->
            <%@include  file="masterpages/slider.jsp"%> 
            <!-- Slider div close-->

            <!-- Menu div open-->
            <%@include  file="masterpages/menu.jsp"%> 
            <!-- Menu div close-->

            <!-- Main div open-->
            <div class="row main"  style="margin-top: -20px;opacity: 1;background-position: relative;background-attachment: fixed;">
                <div class="container sec img-responsive" style="background-image: url(images/header.jpg);">
                    <div class="row">
                        <p style="font-size:30px;color:white;background-color:black;font-family:bold;"><b><marquee direction="right" behavior="alternate" scrollamount=10>Welcome to E-Study Zone</marquee></b></p>
                    </div>
                    <div class="row" style="margin-top: -10px;background-size: contain;background-image: url(images/gd_1.png);height: 400px;">
                       
                        
                    </div>
                    <div class="row" style="background-color: #00ffcc;margin-top: -10px;">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                   <h2 style="color: #000033;font-family:Bodoni MT Black;">We've got what you need!</h2>
                    <hr class="light">
                    <p class="text-faded"><b style="color: white;text-shadow: 2px 2px 2px black;font-size: 18px;">E-Study has everything you need to get your study up and running in no time! All of the videos and notes on E-Study are open source, free to download, and easy to use. No strings attached!The primary mission of the E-Study Zone is to support faculty in the design, development, and delivery of online and campus-based instruction involving academic technology.</b></p>
                    <a href="registration.jsp" class="page-scroll btn btn-success btn-xl sr-button" style="box-shadow: 3px 3px 3px black;color: white;font-family: bold;text-shadow: 2px 2px 2px black;"><b>Get Started!</b></a><br/>
                <br/></div>
            </div>
                </div>
            </div>
            <!-- Main div close-->

            <!-- Footer div open-->

            <%@include  file="masterpages/footer.jsp"%> 
            <!-- Footer div close-->
        </div>

    </body>
</html>
