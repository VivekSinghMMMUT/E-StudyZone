<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
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
            <div class="row main"  style="opacity: 1;margin-top:-20px;background-image: url(../images/c5.png);background-repeat: no-repeat;background-size: cover;">
                <div class="cols-sm-12 h1 text-center" style="font-family: Bodoni MT Black;color: white;text-shadow: 5px 5px 5px black;">Manage Leave</div>
                <div class="col-sm-12"><hr><br>
                    <table class="table table-bordered table-hover" style="box-shadow: 4px 4px 5px black;">
                        <tr class="danger" style="font-size: 18px;color: #080808;text-shadow: 1px 1px 1px black;">
                            <th>Sr.No.</th>
                            <th title="Student Id">Stud Id</th>
                            <th>Name</th>
                            <th>Subject</th>
                            <th>Description</th>
                            <th>From Date</th>
                            <th>To Date</th>
                            <th>Apply Date</th>
                            <th>Apply Time</th>
                            <th>Status</th>
                            <th>Accept Leave</th>
                            <th>Reject Leave</th>
                        </tr> 
                        <%
                            int n = 1;
                            String q = "select * from leave order by leaveid desc";
                            ResultSet rs = new DBManager().getResult(q);
                            if(rs!=null)
                            {
                            while (rs.next()) {
                        %>
                         
                        <tr class="warning" style="color:#330033;font-weight: bold;">
                            <td><%=n%></td>
                       
                            <td><%=rs.getString("userid")%></td>
                            <td><%
                            ResultSet rs2=new DBManager().getResult("select name,mobile from registration where regid="+rs.getString("userid"));
                           String name="";
                            if(rs2!=null)
                           {
                            rs2.next();
                            name=rs2.getString("name");
                           }
                            %>
                            <%=name%></td>
                            <td><%=rs.getString("subject")%></td>
                            <td><%=rs.getString("leavedescription")%></td>
                            <td><%=rs.getString("fdate")%></td>
                            <td><%=rs.getString("tdate")%></td>
                            <td><%=rs.getString("cdate")%></td>
                            <td><%=rs.getString("ctime")%></td>
                            <td><%=rs.getString("remark")%></td>
                            <td><a href="admin_code/sendleaveresponse.jsp?res=1&leaveid=<%=rs.getString("leaveid")%>&mobile=<%=rs2.getString("mobile")%>">Accept</a></td>
                            <td><a href="admin_code/sendleaveresponse.jsp?res=2&leaveid=<%=rs.getString("leaveid")%>&mobile=<%=rs2.getString("mobile")%>">Reject</a></td>

                            <%
                                    n++;
                                }
                            }
                            %>
                    </table>

                </div>

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