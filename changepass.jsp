
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include  file="masterpages/my.jsp"%> 
    </head>
    <body style="background-image: url(studentzone/studentimages/bg.jpg);background-repeat: no-repeat;background-size: cover;">
        <div class="container">
            <div class="col-sm-3"></div>
            <div class="col-sm-6" style="margin-top: 15%;">
            <form action="generalcode/chanagepasscode.jsp" method="post">
                <span style="font-size: 22px;font-family: bold;color: #99ff33;margin-top: 15%;">Enter New Password </span><input type="password" name="pass" class="form-control btn-lg"/><br>
                <span style="font-size: 22px;font-family: bold;color: #99ff33;"> Confirm Password </span> <input type="password" name="cpass" class="form-control btn-lg" style="margin-top: 1%;"/><br>
                <input type="submit" value="Change Password" class="form-control btn-success btn-lg" style="margin-top: 1%;height: 40px;font-size: 20px;font-family: bold;color: black;"/>
                <a href="login.jsp"><span style="font-size: 20px;font-family: bold;color: #99ff33;">Goto login page</span></a>
            </form>
                 </div>
            <div class="col-sm-3"></div>
        </div>
    </body>
</html>
