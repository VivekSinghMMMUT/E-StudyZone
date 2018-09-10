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
           
            <!-- Main div open-->
            <div class="row main"  style="opacity: 1;margin-top: -20px;background-image: url(studentimages/mnbg.jpg);">
                <div class="container sec" style="height: 658px;background-image: url(../images/c5.jpg);color: black;font-family: bold;">
                   <br> <div class="col-sm-3"></div>
            <div class="col-sm-6" style="margin-top: 10%;">
                    <div class="col-sm-12 text-center h1" style="color: #000033;font-family:Bodoni MT Black;">&nbsp;&nbsp;Change Password<br><br><hr><br></div>
                    
                    <form action="studentcode/changepasscode.jsp?qid=<%=request.getParameter("qid")%>" method="post">
                        <div class="col-sm-12">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">  <span style="font-size: 22px;font-family: bold;color: #99ff33;margin-top: 15%;">Old Password</span></div>
                            <div class="col-sm-5"><input required="" type="text" class="form-control btn-lg" name="oldpass" /></div>
                            <div class="col-sm-1"></div>
                        </div><br>
                        <div class="col-sm-12"><br>
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5"><span style="font-size: 22px;font-family: bold;color: #99ff33;">New Password</span></div>
                            <div class="col-sm-5"><input required="" type="text" class="form-control btn-lg" id="newpass" name="newpass" /></div>
                            <div class="col-sm-1"></div>
                        </div><br>
                        <div class="col-sm-12"><br>
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5"><span style="font-size: 22px;font-family: bold;color: #99ff33;">Confirm Password</span></div>
                            <div class="col-sm-5"><input required="" type="text" class="form-control btn-lg" id="cpass" name="cpass" /></div>
                            <div class="col-sm-1"></div>
                        </div><br>
                        <div class="col-sm-12"><br>
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5"></div>
                            <div class="col-sm-5"><input id="btnn" type="submit" class="btn-success form-control" style="color: #000;font-size: 19px;font-family: bold;;" /></div>
                            <div class="col-sm-1"></div>
                        </div>
                    </form>   
                        <a href="welcome.jsp"><span style="font-size: 22px;font-family: bold;color: #66ff66;">Goto home page</span></a>
 </div>
            <div class="col-sm-3"></div>
        </div>

                </div>
                <!-- Main div close-->

            </div>
        
</body>
</html>
<%    }
%>