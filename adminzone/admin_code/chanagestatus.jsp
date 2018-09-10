<%@page import="mypack.DBManager"%>
<%
   String lid=request.getParameter("lid");
   String status=request.getParameter("status");
   if(status.equals("true"))
   {
   status="false";
   }
   else{
       status="true";
   }
String q="update login set status='"+status+"' where userid='"+lid+"'";
new DBManager().executeNoneQuery(q);
response.sendRedirect("../ManageLogin.jsp");

%>