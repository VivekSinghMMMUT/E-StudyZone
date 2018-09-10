<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
    DBManager db = new DBManager();
    String q = "select * from login where userid='" + request.getParameter("userid").trim() + "' and password='" + db.getEncryptPassword(request.getParameter("password").trim()) + "' and usertype='student' and status='true'";
    String aq = "select * from login where userid='" + request.getParameter("userid").trim() + "' and password='" + db.getEncryptPassword(request.getParameter("password").trim()) + "' and usertype='admin'";
    ResultSet rs = db.getResult(q);
    ResultSet ars = db.getResult(aq);
    if (rs.next()) {
        String str = "insert into logininfo values('" + db.getAutoIncrement("srno", "logininfo") + "','" + request.getParameter("userid") + "','" + db.getCurrentDate() + "','" + db.getCuurentTime() + "')";
        db.executeNoneQuery(str);
        ResultSet rsname = db.getResult("select name from registration where regid='" + request.getParameter("userid") + "'");
        rsname.next();
        session.setAttribute("uname", rsname.getString("name"));

        session.setAttribute("uid", request.getParameter("userid"));

        db.getCon().close();
        response.sendRedirect("../studentzone/welcome.jsp");
    }
    else if(ars.next()==true)
    {
     String str = "insert into logininfo values('" + db.getAutoIncrement("srno", "logininfo") + "','" + request.getParameter("userid") + "','" + db.getCurrentDate() + "','" + db.getCuurentTime() + "')";
        db.executeNoneQuery(str);
        

        session.setAttribute("aid", request.getParameter("userid"));

        db.getCon().close();
        response.sendRedirect("../adminzone/adminwelcome.jsp");
    }
    else {
        out.print("<script>alert('User Invalid');window.location.href='../login.jsp';</script>");
    }

%>