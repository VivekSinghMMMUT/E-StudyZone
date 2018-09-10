<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <%@include  file="masterpages/my.jsp"%> 
        <style>
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
            <div class="row main"  style="background-position: relative;background-attachment: fixed;margin-top: -20px;opacity: 1;background-image: url(studentzone/studentimages/mnbg.jpg);"><center><b>
                <div class="container sec text-center" style="background-color: #ccffcc;border-radius: 10px;">
                    <div class="text-center">
                        <img class="img-responsive img-thumbnail btn-block" style="box-shadow: 2px 2px black;" src="images/au2.png"/> 
                    </div><br/>
                    <div class="row">
            <div class="col-sm-8">
                <h2 style="color: #000033;font-family:Bodoni MT Black;">What We Do</h2>
                <p>We work with faculty on integrating appropriate online teaching pedagogy and using technologies that promote student engagement and critical thinking skills. We provide assistance with course design and development strategies that support effective communication and learning for students. We help faculty acquire the technical skills necessary to confidently utilize academic technology tools in their courses, both for instruction and for student projects and collaboration. We support faculty in developing or migrating their course materials in Moodle.<p>
                    <a class="btn btn-default btn-lg btn-success" href="login.jsp" style="box-shadow: 2px 2px black;">Become a member &raquo;</a>
                </p>
            </div>
            <div class="col-sm-4">
                <h2 style="color: #000033;font-family:Bodoni MT Black;">Contact Us</h2>
                <address>
                    <strong>MMMUT Gorakhpur</strong>
                    <br>Vivek Singh
                    <br>Ghazipur, U.P.
                    <br>
                </address>
                <address>
                    <abbr title="Phone">P:</abbr>9140729954
                    <br>
                    <abbr title="Email">E:</abbr> <a href="mailto:#">vivekmmmut16@gmail.com</a>
                </address>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <div class="row container">
            <div class="col-sm-6">
                <div class="col-sm-3"></div><img class="img-circle img-responsive img-center" src="images/m.jpg" alt="">
                <h2 style="color: #000033;font-family:Bodoni MT Black;"> &nbsp;&nbsp;&nbsp;&nbsp;Our Mission</h2>
                <p>The primary mission of the E-Study Zone is to support faculty in the design, development, and delivery of online and campus-based instruction involving academic technology.</p>
            </div>
            <div class="col-sm-6">
                <div class="col-sm-3"></div> <img class="img-circle img-responsive img-center" src="images/v.jpg" alt="">
                <h2 style="color: #000033;font-family:Bodoni MT Black;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Our Vision</h2>
                <p>The E-Study Zone fosters an inviting institutional climate that promotes excellence in teaching and learning with technology, collegiality, and collaboration among faculty by providing opportunities to student.</p>
            </div>
            
        </div>
                </div></b></center>
            </div>
            <!-- Main div close-->

            <!-- Footer div open-->     

            <%@include  file="masterpages/footer.jsp"%> 
            <!-- Footer div close-->
        </div>

    </body>
</html>
