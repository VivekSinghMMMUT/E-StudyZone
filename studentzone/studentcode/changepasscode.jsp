<%@page import="mypack.DBManager"%>
<%
    String oldpass = request.getParameter("oldpass").trim();
    String newpass = request.getParameter("newpass").trim();
    DBManager db = new DBManager();
    String q = "update login set password='" + db.getEncryptPassword(newpass) + "' where password='" + db.getEncryptPassword(oldpass) + "' and userid='" + session.getAttribute("uid") + "'";
    if (db.executeNoneQuery(q) == true) {
        session.invalidate();
        out.print("<script>alert('Password is Updated');window.location.href='../../login.jsp';</script>");
    }
    else{
            out.print("<script>alert('Password is not Updated');window.location.href='../changepass.jsp';</script>");

    }
%>