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
        <script>
            function like(p)
            {
                qid
                var uid = $(p).parent().parent().children().find(".uid").text();
                var qid = $(p).parent().parent().children().next().find(".qid").text();

                var obj = $(p).parent().parent().children().find(".likeno");
                var data = {userid: uid, qid: qid};
                $.post("studentcode/likecode.jsp", data, function(result) {
                    obj.text(result);

                });
            }
        </script>
    </head>

    <body>
        <div class="container-fluid outer">
            <%@include file="st_masterpages/headermenu.jsp" %>
            <!-- Main div open-->
            <div class="row main"  style="opacity: 1;margin-top: -20px;background-image: url(studentimages/mnbg.jpg);">
                <div class="container sec" style="background-image: url(../images/c5.jpg);color: black;font-family: bold;">
                    <div class="col-sm-12 text-center h2" style="color: #000033;font-family:Bodoni MT Black;">Post Question</div>
                    <form action="studentcode/postquscode.jsp" method="post">
                        <div class="col-sm-12">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-6">
                                <textarea name="qus" class="form-control" required="" style="resize: none;font-size: 17px;color: #330000;font-family: bold;"></textarea>
                            </div>
                            <div class="col-sm-2"><br/><input type="submit" class="form-control btn-success" value="POST" style="font-family: Bodoni MT Black;color: black;font-size: 17px;"></div>
                            <div class="col-sm-2"></div>

                        </div>
                    </form>   
                    <div class="col-sm-12"><br><hr/></div>
                    <div class="col-sm-12">
                        <!--                        <div class="col-sm-1"></div>-->

                        <div class="col-sm-12">
                            <table class="table table-responsive table-striped">
                                <thead>
                                    <tr>
                                        <th class="text-center h3" colspan="8" style="color: #000033;font-family:Bodoni MT Black;">All Questions</th>
                                    </tr>
                                </thead>
                                <thead>
                                    <tr class="danger">
                                        <th><b>Sr.No.</b></th>
                                        <th>Question</th>
                                        <th>User Id</th>
                                        <th>Post Date</th>
<!--                                        <th>Like</th>-->
                                        <th>Reply</th>
                                        <th>Show</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% int n = 1;
                                        DBManager db = new DBManager();

                                        ResultSet rs = db.getResult("select * from qus");
                                        while (rs.next()) {
                                    %>

                                    <tr class="warning">
                                        <td><%=n%></td>
                                        <td><%=rs.getString("qtext")%></td>
                                        <td><span style="display: none;" class="uid"><%=rs.getString("userid")%></span>
                                            <span style="display: none;" class="qid"><%=rs.getString("qid")%></span>
                                            <%
                                                ResultSet rsname = db.getResult("select name from registration where regid='" + rs.getString("userid") + "'");
                                                if (rsname != null) {
                                                    if (rsname.next()) {
                                                        out.print(rsname.getString("name") + "(" + rs.getString("userid") + ")");
                                                    }
                                                }
                                            %></td>
                                        <td><%=rs.getString("postdate")%></td>
                                        <!--                                        <td>(<span class="likeno">
                                                                                        
                                                                                       
                                                                                    </span>)&nbsp;<span onclick="like(this)" style="color: navy;font-size: 13pt;font-weight: bold;cursor: pointer;" class="glyphicon glyphicon-thumbs-up"></span>
                                        </td>-->
                                        <td>
                                            <a href="reply.jsp?qid=<%=rs.getString("qid")%>&qtext=<%=rs.getString("qtext")%>"><span title="Reply" style="color: navy;font-size: 13pt;font-weight: bold;cursor: pointer;" class="glyphicon glyphicon-share-alt"></span></a></td>
                                        <td><a href="showans.jsp?qid=<%=rs.getString("qid")%>&qtext=<%=rs.getString("qtext")%>"><span class="glyphicon glyphicon-eye-open" style="color: navy;font-size: 13pt;font-weight: bold;cursor: pointer;"></span></a></td>
                                    </tr>

                                    <%
                                            n++;
                                        }

                                        db.getCon().close();
                                    %>
                                </tbody>
                            </table>
                        </div>
                        <!--                        <div class="col-sm-1"></div>-->
                    </div>

                </div>
                <!-- Main div close-->

            </div>
                                 <%@include  file="st_masterpages/footer.jsp"%> 
        </div>

    </body>
</html>
<%    }
%>