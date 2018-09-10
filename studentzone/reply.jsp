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
            <div class="row main"  style="opacity: 1;margin-top: -20px;background-image: url(studentimages/mnbg.jpg);">
                <div class="container sec" style="background-color: #666600;color: black;font-family: bold;">
                    <div class="col-sm-12 text-center h2" style="color: #000033;font-family:Bodoni MT Black;"><a href="postqus.jsp"><span class="glyphicon glyphicon-hand-left" title="Back" style="color:navy;font-weight: bold; "></span></a> &nbsp;&nbsp;Post Answer</div>
                    <form action="studentcode/postanscode.jsp?qid=<%=request.getParameter("qid")%>" method="post">

                        <div class="col-sm-12 ">
                            <div class="col-sm-2 h4">Question :</div>
                            <div class="col-sm-8"><span class="form-control" style="font-size: 18px;color: #330000;font-family: bold;"><%=request.getParameter("qtext")%></span></div>
                            <div class="col-sm-2"><br><br></div>

                        </div>
                        <div class="col-sm-12">
                            <div class="col-sm-2 h4">Answer :</div>
                            <div class="col-sm-6">
                                <textarea name="ans" required=""  class="form-control" style="font-size: 18px;color: #330000;font-family: bold;resize: none;"></textarea>
                            </div>
                            <div class="col-sm-2"><br/><input type="submit" class="form-control btn-success" value="POST" style="font-family: Bodoni MT Black;color: black;font-size: 17px;"></div>
                            <div class="col-sm-2"></div>

                        </div>
                    </form>   

                </div>

            </div>
            <!-- Main div close-->

        </div>
    </div>

</body>
</html>
<%    }
%>