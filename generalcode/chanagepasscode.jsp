<%@page import="mypack.DBManager"%>
<%
    if (session.getAttribute("userid") != null) {
        String q = "update login set password='" + new DBManager().getEncryptPassword(request.getParameter("pass")) + "' where userid='" + session.getAttribute("userid") + "'";
        if (new DBManager().executeNoneQuery(q) == true) {
            out.print("<script>alert('Password is Updated');window.location.href='../login.jsp';</script>");

        } else {
            out.print("<script>alert('Password is not Updated');window.location.href='../login.jsp';</script>");

        }

    } else {
        response.sendRedirect("../login.jsp");
    }
%>