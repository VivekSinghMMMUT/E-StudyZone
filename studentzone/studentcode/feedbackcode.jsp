<%@page import="mypack.DBManager"%>
<%
    String feedback = request.getParameter("feedback").trim();
    DBManager db = new DBManager();
    String q = "insert into feedback values('" + db.getAutoIncrement("fid", "feedback") + "','" + session.getAttribute("uid") + "','" + feedback + "','" + db.getCurrentDate() + "')";

    if (db.executeNoneQuery(q) == true) {
        out.print("<script>alert('Feedback Submitted');window.location.href='../feedback.jsp';</script>");

    } else {
        out.print("<script>alert('Feedback is not Submitted');window.location.href='../feedback.jsp';</script>");

    }
%>