<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
    if (session.getAttribute("uid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

        <script>
            $(document).ready(function() {
                $("#btnn").attr("disabled", true);

                $("#cpass").blur(function() {
                    var p = $("#cpass").val().trim();
                    var c = $("#newpass").val().trim();
                    if (c == "")
                    {
                        $("#newpass").focus();

                    }
                    else
                    {
                        if (p == c)
                        {
                            $("#btnn").attr("disabled", false);
                        }
                        else
                        {
                            alert("Password is not Confirmed");
                            $("#btnn").attr("disabled", true);
                        }
                    }
                });

            });
        </script>
    </head>
    <body>
        <div class="container-fluid outer">
             <div class="row main"  style="opacity: 1;margin-top: -20px;background-image: url(studentimages/mnbg.jpg);">
                <div class="container sec" style="height: 658px;background-image: url(../images/c5.jpg);color: black;font-family: bold;">
                   <br> <div class="col-sm-3"></div>
            <div class="col-sm-6" style="margin-top: 10%;">
                    <div class="col-sm-12 text-center h1" style="color: #000033;font-family:Bodoni MT Black;">&nbsp;&nbsp;Change Profile Pic<br><br><hr><br></div>
                    
                    
        <form action="../uploadpic" method="post" enctype="multipart/form-data">
            <input type="hidden"  name="userid" value="<%=session.getAttribute("uid")%>" />
            <input type="file" name="pic" class="form-control"/><br><br><input type="submit" class="form-control btn-success" value="Upload Pic" />
        </form>
             <a href="welcome.jsp"><span style="font-size: 22px;font-family: bold;color: #66ff66;">Goto home page</span></a>
            </div></div></div></div>
    </body>
</html>
<%
}
%>