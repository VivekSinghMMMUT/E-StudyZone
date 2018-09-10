<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <%@include  file="masterpages/my.jsp"%> 
        <style>
            .sec
            {
                border-radius: 20px;
                min-height: 540px;
                /*                background-image: url(images/rgisbg.jpg);*/
                background-color: black;
                opacity: 0.9;
            }
            input
            {
                font-size: 25px;
                font-family: cursive;
                font-weight: bold;
                background-color: white;
            }
             textarea
            {
                font-size: 25px;
                font-family: cursive;
                font-weight: bold;
                background-color: white;
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
            <div class="row main"  style="background-position: relative;background-attachment: fixed;margin-top: -20px;opacity: 1;">
                <div class="container sec text-center" style="opacity: 1;box-shadow: 3px 4px black;background-image: url(images/c5.jpg);">
                    <div class="col-lg-12 h1 text-center">
                        <img class="img-responsive img-thumbnail" style="box-shadow: 2px 2px black;" src="images/enqtitle.jpg" width="80%"/> 
                    </div><br/>
                    <form action="generalcode/enquirycode.jsp" method="post" style="color: white;font-size: 1.6em;">
                        <div class="col-sm-12"><br/><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5" style="text-shadow: 2px 2px black;">
                                Enter User Name : 
                            </div>
                            <div class="col-sm-5">
                                <input type="text" id="Registration_No" name="username" required="required" class="form-control" style="box-shadow: 2px 2px black;"/>
                            </div>
                            <div class="col-sm-1">
                            </div>
                        </div><br/>
                        <div class="col-sm-12"><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5" style="text-shadow: 2px 2px black;">
                                Enter Email : 
                            </div>
                            <div class="col-sm-5">
                                <input type="email" id="Registration_No" name="email" required="required" class="form-control" style="box-shadow: 2px 2px black;"/>
                            </div>
                            <div class="col-sm-1">
                            </div>
                        </div><br/>
                        <div class="col-sm-12"><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5" style="text-shadow: 2px 2px black;">
                                Enter Mobile : 
                            </div>
                            <div class="col-sm-5">
                                <input type="number" id="Registration_No" name="mobile" required="required" class="form-control" style="box-shadow: 2px 2px black;"/>
                            </div>
                            <div class="col-sm-1">
                            </div>
                        </div><br/>
                        <div class="col-sm-12"><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5" style="text-shadow: 2px 2px black;">
                                Enter Address : 
                            </div>
                            <div class="col-sm-5">
                                <textarea id="Registration_No" name="address" required="required" class="form-control" style="box-shadow: 2px 2px black;resize: none;"></textarea>
                            </div>
                            <div class="col-sm-1">
                            </div>
                        </div><br/>
                        <div class="col-sm-12"><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5" style="text-shadow: 2px 2px black;">
                                Enter Enquiry Test : 
                            </div>
                            <div class="col-sm-5">
                                <textarea id="Registration_No" name="enquiry" required="required" class="form-control" style="box-shadow: 2px 2px black;resize: none;"></textarea>
                            </div>
                            <div class="col-sm-1">
                            </div>
                        </div>
                        <div class="col-sm-12"><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5">

                            </div>
                            <div class="col-sm-5">
                                <input type="submit" class="form-control btn-success" style="color: black;font-family: bold;font-size: 19px;border: 10px;box-shadow: 2px 2px;text-shadow: 1px 1px #000;"/>  <br/>                          </div>
                            <div class="col-sm-1">
                            </div>
                        </div>

                    </form>    

                </div>
            </div>
            <!-- Main div close-->

            <!-- Footer div open-->

            <%@include  file="masterpages/footer.jsp"%> 
            <!-- Footer div close-->
        </div>

    </body>
</html>
