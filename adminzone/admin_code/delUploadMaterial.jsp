<%@page import="mypack.DBManager"%>
<%
  String q="delete from studentupload where stupid='"+request.getParameter("mid") +"'";
  if(new DBManager().executeNoneQuery(q)==true)
  {
   response.sendRedirect("../uploadmaterial.jsp");
  }
  else
  {
   response.sendRedirect("../uploadmaterial.jsp");   
  }
%>