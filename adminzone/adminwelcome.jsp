<%
if(session.getAttribute("aid")==null)
{
response.sendRedirect("../login.jsp");
}
else
{
%>
<!DOCTYPE html>
<html>

    <head>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/mystyle.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery.js" type="text/javascript"></script>
        <link href="admin_css/quake.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <style>

            [class*="entypo-"]:before {
                font-family: 'entypo', sans-serif;
            }


        </style> 

        <style>
            p{
                color: #000033;
                font-size: 17px;
            }
        </style>
    </head>

    <body>
        <div class="container-fluid outer">
            <%@include file="admin_masterpages/headermenu.jsp" %>
            <!-- Main div open-->
            <div class="row main"  style="opacity: 1;margin-top:-20px;background-image: url(../images/abg.png);background-repeat: no-repeat;background-size: cover;">
                <center><h1 class="text-center" style="font-family: Bodoni MT Black;color: white;text-shadow: 5px 5px 5px black;">Welcome To Admin Panel</h1>
                <div><br><br>
                    <a href="uploadmaterial.jsp"><img style="height: 300px;width: 300px;display: inline;" class="img-circle shake-me" src="../images/mm.png" title="Manage Material"/></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="ManageStudent.jsp"><img style="height: 300px;width: 300px;display: inline;" class="img-circle shake-me" src="../images/ms.jpeg" title="Manage Student"/></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="ManageLogin.jsp"><img style="height: 300px;width: 300px;display: inline;" class="img-circle shake-me" src="../images/ml_1.png" title="Manage Login"/></a>
                    <br/><br/><a href="ManageEnquiry.jsp"><img style="height: 300px;width: 300px;display: inline;" class="img-circle shake-me" src="../images/me.jpg" title="Manage Enguiry"/></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="ManageLeave.jsp"><img style="height: 300px;width: 300px;display: inline;" class="img-circle shake-me" src="../images/lm.jpeg" title="Manage Leave"/></a>
                    <a href="ManageFeedback.jsp"><img style="height: 300px;width: 300px" class="img-circle shake-me" src="../images/fm.png" title="Manage Feedback"/></a>
                </div></center><br/>
            </div>
            <!-- Main div close-->
            <!-- Footer div open-->

           
            <%@include file="admin_masterpages/footer.jsp"%>

             <!-- Footer div close-->

        </div>

    </body>
</html>
<%
}
%>