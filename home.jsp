<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <%@include  file="masterpages/my.jsp"%> 
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
            <div class="row main"  style="margin-top: -20px;">
                <div class="container sec">
                    <h1>Home Page</h1>
                </div>
            </div>
            <!-- Main div close-->

            <!-- Footer div open-->

            <%@include  file="masterpages/footer.jsp"%> 
            <!-- Footer div close-->
        </div>

    </body>
</html>
