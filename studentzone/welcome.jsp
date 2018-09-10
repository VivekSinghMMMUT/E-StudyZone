<%
    if (session.getAttribute("uid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>

<!DOCTYPE html>
<html>

    <head>
        <%@include  file="st_masterpages/st_my.jsp"%>
    </head>

    <body>
        <div class="container-fluid outer">
            <%@include file="st_masterpages/headermenu.jsp" %>
            <!-- Main div open-->
            <div class="row main"  style="background-position: relative;background-attachment: fixed;opacity: 1;margin-top:-20px;background-image: url(studentimages/bg.jpg);">
                <div class="container sec" style="background-image: url(studentimages/mnbg.jpg);border-radius: 20px;">
                    <div class="row">
                        <p style="font-size:30px;color:white;background-color:black;font-family:bold;"><b><marquee direction="right" behavior="alternate" scrollamount=10>Welcome to E-Study Zone</marquee></b></p>
                    </div>
                    <center><br/>
                        <a href="postqus.jsp"><img src="../images/gd.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/></a> &nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <a href="showadminmaterial.jsp">  <img src="../images/d.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> </a>>&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        
                        <a href="uploadstudentmaterial.jsp"><img src="../images/up.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/></a> &nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <a href="leave.jsp"> <img src="../images/ml.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> </a>&nbsp;&nbsp;&nbsp;&nbsp;
                       <br/><br/> <a href="feedback.jsp"> <img src="../images/fb.jpg" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> </a>&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="viewprofile.jsp"> <img src="../images/p.jpg" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> </a>&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="changapassword.jsp"> <img src="../images/cp.png" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> </a>&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="logout.jsp"> <img src="../images/lo.jpg" class="img-thumbnail shake-me" alt="Group Discussion" width="250" height="250" style="cursor: pointer;"/> </a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <br/><br/><br></center>
                </div>
            </div>
            <!-- Main div close-->
            <!-- Footer div open-->
            
            <%@include  file="st_masterpages/footer.jsp"%> 
            <!-- Footer div close-->

        </div>

    </body>
</html>
<%
    }
%>