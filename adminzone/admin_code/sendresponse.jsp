<%@page import="javafx.scene.control.Alert"%>
<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DBManager"%>
<%
    
String res=request.getParameter("flag");
String mobile = request.getParameter("mobile");
String eqid=request.getParameter("rid");
if(res.equals("1"))
{
    String q="delete from enquiry where eqid="+eqid;
  if(new DBManager().executeNoneQuery(q)==true)
  {
   response.sendRedirect("../ManageEnquiry.jsp");
  }
  else
  {
   response.sendRedirect("../ManageEnquiry.jsp");   
  }
}
else if(res.equals("2"))
{
    SmsSender sms=new SmsSender();
    sms.SendSms(mobile, "Your enquiry is forwarded .");
    
    response.sendRedirect("../ManageEnquiry.jsp");
}

%>