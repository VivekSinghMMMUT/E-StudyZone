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
            <div class="row main"  style="background-attachment: fixed;background-position: relative;opacity: 1;margin-top: -20px;background-image: url(studentimages/mnbg.jpg);">
                <div class="container sec" style="background-color: #666600;color: black;font-family: bold;">
                    <div class="col-sm-12 text-center h1" style="font-family: Bodoni MT Black;color: white;text-shadow: 5px 5px 5px black;">Download Admin Material</div>
                    <form action="../upmaterial" method="post" enctype="multipart/form-data">


                        <div class="col-sm-12"><br><br></div>      
                        <div class="col-sm-12">
                            <div style="overflow-x: auto;">
                                <table class="table table-bordered table-hover">
                                    <tr class="danger">
                                        <th>Sr.No.</th>
                                        <th>Subject</th>
                                        <th>File Name</th>
                                        <th>Upload Date</th>
                                        <th>Upload Time</th>
                                        <th>Upload Type</th>
                                        <th>Download</th>
                                    </tr>
                                    <tr>
                                        <%
                                            int n = 1;
                                            String q = "select * from studentupload where uploadby='admin' order by stupid  desc";
                                            ResultSet rs = new DBManager().getResult(q);
                                            while (rs.next()) {
                                        %>
                                    <tr class="success">
                                        <td><%=n%></td>
                                        <td><%=rs.getString("subject")%></td>
                                       
                                        <td><%=rs.getString("filename")%></td>
                                        <td><%=rs.getString("cdate")%></td>
                                        <td><%=rs.getString("ctime")%></td>
                                        <td><%=rs.getString("uploadby")%></td>
                                        <td><a href="<%=request.getContextPath() + "/studentUpMaterial/" + rs.getString("filename")%>" target="_blank"><span style="color: navy;font-weight: bold;font-size: 14pt;cursor: pointer; " class="glyphicon glyphicon-download-alt"></span></a></td>
                                    </tr>
                                    <%
                                            n++;
                                        }
                                    %>

                                </table>
                            </div>
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