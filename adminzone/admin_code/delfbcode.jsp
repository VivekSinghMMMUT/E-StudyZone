<%@page import="mypack.DBManager"%>
<%
  String q="delete from feedback where userid='"+request.getParameter("rid") +"'";
  if(new DBManager().executeNoneQuery(q)==true)
  {
   response.sendRedirect("../ManageFeedback.jsp");
  }
  else
  {
   response.sendRedirect("../ManageFeedback.jsp");   
  }
%>