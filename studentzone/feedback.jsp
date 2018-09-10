<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
    if (session.getAttribute("uid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>

<!DOCTYPE html>
<html>

    <head>
        <link href="studentcss/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="studentcss/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="studentcss/studentstyle.css" rel="stylesheet" type="text/css"/>
        <script src="studentjs/jquery.js" type="text/javascript"></script>
        <script src="studentjs/bootstrap.min.js" type="text/javascript"></script>
        <style>

            [class*="entypo-"]:before {
                font-family: 'entypo', sans-serif;
            }


        </style> 
        <style>
            th{
                font-size: 18px;
            }
            td{
                font-size: 16px;
                font-family: bold;
            }
            p{
                color: #000033;
                font-size: 17px;
            }
        </style>
    </head>

    <body>
        <div class="container-fluid outer">
            <%@include file="st_masterpages/headermenu.jsp" %>
            <!-- Main div open-->
            <div class="row main"  style="background-position: relative;background-attachment: fixed;opacity: 1;margin-top: -20px;background-image: url(studentimages/mnbg.jpg);">
                <div class="container sec" style="background-image: url(../images/c5.jpg);color: black;font-family: bold;">
                    <div class="col-sm-12 text-center h1" style="font-family: Bodoni MT Black;color: white;text-shadow: 5px 5px 5px black;">Feedback</div>
                    <form action="studentcode/feedbackcode.jsp" method="post">

                      
                        <div class="col-sm-12"><br><br><hr><br>
                            <div class="col-sm-2 h4" style="color: yellow;"><b>Enter Your Feedback :</b></div>
                            <div class="col-sm-7">
                                <textarea name="feedback" required=""  class="form-control" style="font-size: 18px;color: #330000;font-family: bold;resize: none;"></textarea>
                            </div>
                            <div class="col-sm-2"><br/><input type="submit" class="form-control btn-success" value="Feedback" style="font-family: Bodoni MT Black;color: black;font-size: 17px;"></div>
                            <div class="col-sm-1"></div>

                        </div>
                    </form>   

                </div>

            </div>
            <!-- Main div close-->

        <%@include  file="st_masterpages/footer.jsp"%> 
    </div>

</body>
</html>
<%    }
%>