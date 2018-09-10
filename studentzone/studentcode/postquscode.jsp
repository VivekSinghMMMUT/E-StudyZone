<%@page import="mypack.DBManager"%>
<%
String qus=request.getParameter("qus").trim();
DBManager db=new DBManager();
String q="insert into qus values('"+db.getAutoIncrement("qid", "qus") +"','"+qus+"','"+session.getAttribute("uid") +"','"+db.getCurrentDate()+"')";
if(db.executeNoneQuery(q)==true)
{
response.sendRedirect("../postqus.jsp");
}
else
{
response.sendRedirect("../postqus.jsp");

}
%>