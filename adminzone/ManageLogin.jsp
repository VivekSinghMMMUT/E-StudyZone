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
        <script>
            $(document).ready(function() {
                $(".del").click(function() {

                    var id = $(this).parent().parent().children().find(".mid").text();
                    var status = confirm("You want to delete this Record?")
                    if (status == true)
                    {
                        window.location.href = "admin_code/delregcode.jsp?rid=" + id;
                    }
                });

            });
        </script>
    </head>

    <body>
        <div class="container-fluid outer">
            <%@include file="admin_masterpages/headermenu.jsp" %>
            <!-- Main div open-->
            <div class="row main"  style="opacity: 1;margin-top:-20px;background-image: url(../images/c5.png);background-repeat: no-repeat;background-size: cover;">
                <div class="cols-sm-12 h1 text-center" style="font-family: Bodoni MT Black;color: white;text-shadow: 5px 5px 5px black;">Login Management</div>

                <div class="col-sm-12"><hr/><br/>
                    <table class="table table-bordered table-hover" style="box-shadow: 4px 4px 5px black;">
                        <tr class="danger" style="font-size: 18px;color: #080808;text-shadow: 1px 1px 1px black;">
                            <th>Sr.No.</th>
                            <th>Stu.Id</th>
                            <th>Name</th>
                            <th title="Login Count">Count</th>
                            <th>Status</th>
                             <th>Update Status</th>
                            <th>View Date & Time</th>
                        </tr> 
                        <%
                            int n = 1;
                            String q = "select regid,name from registration order by regid desc";
                            ResultSet rs = new DBManager().getResult(q);
                         if(rs!=null)
                         {
                            while (rs.next()) {
                        %>
                        <tr class="warning" style="color:#330033;font-weight: bold;">
                            <td><%=n%></td>
                            <td><%=rs.getString("regid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td title="Login Count">
                                <%
                                    String qq = "select count(*) from logininfo where userid='" + rs.getString("regid") + "' ";
                                    // out.print(qq);
                                    ResultSet lc = new DBManager().getResult(qq);
                                    if (lc != null) {
                                        if (lc.next()) {
                                            out.print(lc.getInt(1));
                                        } else {
                                            out.print(0);
                                        }
                                    }
                                %></td>
                            <td>
                                <%
                                    String qqq = "select status from login where userid='" + rs.getString("regid") + "' ";
                                    // out.print(qq);
                                    String st="";
                                    ResultSet status = new DBManager().getResult(qqq);
                                  if(status!=null)
                                  {
                                    if (status.next()) {
                                        st=status.getString("status");
                                        out.print(st);
                                    }
                                  }
                            
                                %>
                            </td>
                            <td><a href="admin_code/chanagestatus.jsp?lid=<%=rs.getString("regid")%>&status=<%=st%>">Update Status</a></td>
                            <td><a href="viewlogininfo.jsp?uid=<%=rs.getString("regid")%>"><span style="color: navy;font-weight: bold;font-size: 20pt;" class="glyphicon glyphicon-eye-open"></span></a></td>
                        </tr>
                        <%                                n++;
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