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
            <div class="row main"  style="margin-top: -20px;background-image: url(studentimages/mnbg.jpg);">
                <div class="container sec" style="background-color: #666600;color: black;font-family: bold;">
                    <div class="col-sm-12 text-center h2" style="color: #000033;font-family:Bodoni MT Black;"><a href="postqus.jsp"><span class="glyphicon glyphicon-hand-left" title="Back" style="color:navy;font-weight: bold; "></span></a> &nbsp;&nbsp;Show Answer</div>
                    <div class="col-sm-12"> <br><br></div>
                    <div class="col-sm-12">
                        <table class="table table-bordered table-hover">
                            <tr class="success" >
                                <th class="text-center" colspan="4"><%=request.getParameter("qtext")%></th>
                            </tr>
                            <tr class="danger">
                                <th>Sr.No.</th>
                                <th>Reply</th>
                                <th>User Id</th>
                                <th>Post Date</th>
                            </tr>
                            <% int n = 1;
                                DBManager db = new DBManager();
                                ResultSet rs = db.getResult("select * from ans where qid='" + request.getParameter("qid") + "'");
                                while (rs.next()) {

                            %>
                            <tr class="warning">
                                <td><%=n%></td>
                                <td><%=rs.getString("atext")%></td>
                                <td><%
                                    ResultSet rsname = db.getResult("select name from registration where regid='" + rs.getString("userid") + "'");
                                    rsname.next();
                                    out.print(rsname.getString("name") + " (" + rs.getString("userid") + ")");

                                    %></td>
                                <td><%=rs.getString("postdate")%></td>

                            </tr>
                            <%   n++;
                                }
                            %>
                        </table>
                    </div>
                </div>
                <!-- Main div close-->

            </div>
        </div>

    </body>
</html>
<%    }
%>