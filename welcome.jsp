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
            <!-- Menu div open-->
            <%@include  file="masterpages/menu.jsp"%> 
            <!-- Menu div close-->

            <!-- Main div open-->
            <div class="row main"  style="margin-top: -20px;">
                <div class="container sec">
                    <div class="row">
                        <p style="font-size:30px;color:white;background-color:black;font-family:bold;"><b><marquee direction="right" behavior="alternate" scrollamount=10>Welcome to E-Study Zone</marquee></b></p>
                    </div>
                    <center><img src="images/gd.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> &nbsp;&nbsp;
                        <img src="images/st.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> &nbsp;&nbsp;
                        <img src="images/d.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> &nbsp;&nbsp;
                        <img src="images/ff.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> &nbsp;&nbsp;<br/>
                        <br/><img src="images/res.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> &nbsp;&nbsp;
                        <img src="images/up.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> &nbsp;&nbsp;
                        <img src="images/att.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> &nbsp;&nbsp;
                        <img src="images/ml.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> &nbsp;&nbsp;


                        <br/><br/></center>

                </div>
            </div>
            <!-- Main div close-->

            <!-- Footer div open-->

            <%@include  file="masterpages/footer.jsp"%> 
            <!-- Footer div close-->
        </div>

    </body>
</html>
