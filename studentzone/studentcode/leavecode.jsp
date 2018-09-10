<%@page import="javafx.scene.control.Alert"%>
<%@page import="mypack.DBManager"%>
<%
String subject = request.getParameter("subject").trim();
String description = request.getParameter("description").trim();
String fdate = request.getParameter("fdate").trim();
String tdate = request.getParameter("tdate").trim();
DBManager db=new DBManager();
int id=db.getAutoIncrement("leaveid", "leave");
String q="insert into leave values('"+id+"','"+session.getAttribute("uid") +"','"+subject+"','"+description+"','"+fdate+"','"+tdate+"','"+db.getCurrentDate()+"','"+db.getCuurentTime()+"','null')";
if(db.executeNoneQuery(q)==true)
{
  out.print("<script>alert('Your leave is applied .');window.location.href='../leave.jsp';</script>"); ; 
}
else
{
  out.print("<script>alert('Your leave is not applied .');window.location.href='../leave.jsp';</script>"); ; 
}
%>