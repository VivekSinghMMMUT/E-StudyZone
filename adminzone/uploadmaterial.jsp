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
                  if(status==true)
                  {
                      window.location.href="admin_code/delUploadMaterial.jsp?mid="+id;
                  }
    });

            });
        </script>
    </head>

    <body>
        <div class="container-fluid outer">
            <%@include file="admin_masterpages/headermenu.jsp" %>
            <!-- Main div open-->
            <div class="row main"  style="opacity: 1;background-image: url(../images/c5.png);margin-top:-20px;background-repeat: no-repeat;background-size: cover;">
                <form action="../adminuploadfile" method="post" enctype="multipart/form-data"  >
                    <h1 class="text-center" style="font-family: Bodoni MT Black;color: white;text-shadow: 5px 5px 5px black;">Upload Material</h1>
                    <div class="col-sm-12">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-1" style="font-size: 18px;color: #080808;text-shadow: 1px 1px 1px black;">Subject : </div>
                        <div class="col-sm-5"><input required="" type="text" name="subject" class="form-control" style="box-shadow: 3px 3px 3px black;"/></div>
                        <div class="col-sm-4"></div>
                    </div>
                    <div class="col-sm-12"><br/>
                        <div class="col-sm-2"></div>
                        <div class="col-sm-6"><input type="file" required="" name="mfile" class="form-control"  style="box-shadow: 3px 3px 3px black;"/></div>
                        <div class="col-sm-2"><input type="submit" value="Upload" class="btn btn-primary form-control" style="box-shadow: 3px 3px 3px black;"/></div>
                        <div class="col-sm-2"></div>
                    </div>
                </form>
                <div class="col-sm-12"><br><br></div>
                <div class="col-sm-12">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <table class="table table-bordered table-hover" style="box-shadow: 4px 4px 5px black;">
                            <tr class="danger" style="font-size: 18px;color: #080808;text-shadow: 1px 1px 1px black;">
                                <th>Sr.No.</th>
                                <th>Subject</th>
                                <th>Filename</th>
                                <th>Upload By</th>
                                <th>Upload Date</th>
                                <th>Upload Time</th>
                                <th>Download</th>
                                <th>Delete</th>
                            </tr> 
                            <%
                                int n = 1;
                                String q = "select * from studentupload order by stupid desc";
                                ResultSet rs = new DBManager().getResult(q);
                                while (rs.next()) {
                            %>
                            <tr class="warning" style="color:#330033;font-weight: bold;">
                                <td><%=n%></td>
                                <td><%=rs.getString("subject")%></td>
                                <td><%=rs.getString("filename")%></td>
                                <td><%=rs.getString("uploadby")%></td>
                                <td><%=rs.getString("cdate")%></td>
                                <td><%=rs.getString("ctime")%></td>
                                <td><a target="_blank" href="<%=request.getContextPath() + "/studentUpMaterial/" + rs.getString("filename")%>"><span title="Download" style="color: navy;font-weight: bold;cursor: pointer;" class="glyphicon glyphicon-download-alt"></span></a></td>
                                <td><span style="display: none;" class="mid"><%=rs.getString("stupid")%></span><span  title="Delete" style="color: red;font-weight: bold;cursor: pointer;" class="glyphicon glyphicon-trash del"></span></td>
                            </tr>
                            <%
                                    n++;
                                }
                            %>
                        </table>

                    </div>
                    <div class="col-sm-2"></div>
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