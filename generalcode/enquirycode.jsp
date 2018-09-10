<%@page import="javafx.scene.control.Alert"%>
<%@page import="mypack.DBManager"%>
<%
String username = request.getParameter("username").trim();
String email = request.getParameter("email").trim();
String mobile = request.getParameter("mobile").trim();
String address = request.getParameter("address").trim();
String enquiry = request.getParameter("enquiry").trim();
DBManager db=new DBManager();
int id=db.getAutoIncrement("eqid", "enquiry");
String q="insert into enquiry values('"+db.getAutoIncrement("eqid", "enquiry") +"','"+username+"','"+email+"','"+mobile+"','"+address+"','"+enquiry+"','"+db.getCurrentDate()+"')";
if(db.executeNoneQuery(q)==true)
{
  out.print("<script>alert('Enquiry successfully submitted .');window.location.href='../enquiry.jsp';</script>"); ; 
}
else
{
  out.print("<script>alert('Enquiry  is not submitted .');window.location.href='../enquiry.jsp';</script>"); ; 
}
%>