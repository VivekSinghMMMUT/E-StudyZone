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
                        window.location.href = "admin_code/sendresponse.jsp?flag=1&rid=" + id;
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
                <div class="cols-sm-12 h1 text-center" style="font-family: Bodoni MT Black;color: white;text-shadow: 5px 5px 5px black;"> Manage Enquiry</div>

                <div class="col-sm-12"><hr/><br/>
                    <table class="table table-bordered table-hover" style="box-shadow: 4px 4px 5px black;">

                        <tr class="danger" style="font-size: 18px;color: #080808;text-shadow: 1px 1px 1px black;">
                            <th>Sr.No.</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Mobile No.</th>
                            <th>Address</th>
                            <th>Enquiry</th>
                            <th title="Enquiry Date">Eq.Date</th>
                            <th>Response</th>
                            <th>Delete</th>
                        </tr> 
                        <%
                            int n = 1;
                            String q = "select * from enquiry ";
                            ResultSet rs = new DBManager().getResult(q);
                            while (rs.next()) {
                        %>
                        <tr class="warning" style="color:#330033;font-weight: bold;">
                            <td><%=n%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("email")%></td>
                            <td><%=rs.getString("mobile")%></td>
                            <td><%=rs.getString("address")%></td>
                            <td><%=rs.getString("eqtest")%></td>
                            <td><%=rs.getString("cdate")%></td>
                            <td><a href="admin_code/sendresponse.jsp?flag=2&eqid=<%=rs.getString("eqid")%>&mobile=<%=rs.getString("mobile")%>">Send Response</a></td>
                            <td><span style="display: none;" class="mid"><%=rs.getString("eqid")%></span><span  title="Delete" style="color: red;font-weight: bold;cursor: pointer;" class="glyphicon glyphicon-trash del"></span></td>

                            <%
                                    n++;
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