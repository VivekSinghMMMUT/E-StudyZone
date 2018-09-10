<%@page import="mypack.DBManager"%>
<%
    DBManager db = new DBManager();
    String qid = request.getParameter("qid").trim();
    String ans = request.getParameter("ans").trim();
    String q = "insert into ans values('" + db.getAutoIncrement("aid", "ans") + "','" + qid + "','" + session.getAttribute("uid") + "','" + db.getCurrentDate() + "','"+ans+"')";
    if (db.executeNoneQuery(q) == true) {
        out.print("<script>alert('Answer is posted');window.location.href='../postqus.jsp';</script>");
    } else {
        out.print("<script>alert('Answer is not posted');window.location.href='../postqus.jsp';</script>");
    }
%>