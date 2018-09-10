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
         <div class="row main"  style="margin-top: -20px;opacity: 1;">
             <div class="container sec text-center" style="background-attachment: fixed;background-position: relative;text-shadow: 2px 2px 2px black;font-weight: bold;font-size: 19px;background-image: url(../images/c5.jpg);">
                    <div class="col-lg-12 h1 text-center">
                        <img class="img-responsive img-thumbnail" src="../images/l.jpg" width="80%" style="box-shadow: 4px 4px 5px black"/> 
                    </div><br/>
                    <form action="studentcode/leavecode.jsp" method="post" style="color: white;font-size: 1.6em;">
                        <div class="col-sm-12"><br/><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5">
                                Enter Subject : 
                            </div>
                            <div class="col-sm-5">
                                <input type="text" style="box-shadow: 2px 2px 2px black;" name="subject" required="required" class="form-control" />
                            </div>
                            <div class="col-sm-1">
                            </div>
                        </div><br/>
                        <div class="col-sm-12"><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5">
                               Leave Description : 
                            </div>
                            <div class="col-sm-5">
                                <input type="text" style="box-shadow: 2px 2px 2px black;" name="description" required="required" class="form-control" />
                            </div>
                            <div class="col-sm-1">
                            </div>
                        </div><br/>
                        <div class="col-sm-12"><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5">
                                From Date : 
                            </div>
                            <div class="col-sm-5">
                                <input type="date" style="box-shadow: 2px 2px 2px black;" name="fdate" required="required" class="form-control" />
                            </div>
                            <div class="col-sm-1">
                            </div>
                        </div><br/>
                        <div class="col-sm-12"><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5">
                                To Date : 
                            </div>
                            <div class="col-sm-5">
                                <input style="box-shadow: 2px 2px 2px black;" type="date" name="tdate" required="required" class="form-control" >
                            </div>
                            
                        </div>
                        <div class="col-sm-12"><br/>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5">

                            </div>
                            <div class="col-sm-5">
                                <input type="submit" style="box-shadow: 2px 2px 2px black;" class="form-control btn-success" style="color: black;font-family: bold;font-size: 19px;border: 10px;" value="Apply Leave"/>  <br/>                          </div>
                            <div class="col-sm-1">
                            </div>
                        </div>

                    </form>    

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