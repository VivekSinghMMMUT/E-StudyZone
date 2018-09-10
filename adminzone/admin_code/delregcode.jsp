<%@page import="mypack.DBManager"%>
<%
  String q="delete from registration where regid='"+request.getParameter("rid") +"'";
  if(new DBManager().executeNoneQuery(q)==true)
  {
   response.sendRedirect("../ManageStudent.jsp");
  }
  else
  {
   response.sendRedirect("../ManageStudent.jsp");   
  }
%>