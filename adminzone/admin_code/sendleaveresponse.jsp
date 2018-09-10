<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DBManager"%>
<%
String res=request.getParameter("res");
String mobile = request.getParameter("mobile");
String leaveid=request.getParameter("leaveid");
if(res.equals("1"))
{
    String q="update leave set remark='Accepted' where leaveid="+leaveid;
    new DBManager().executeNoneQuery(q);
    out.print(mobile);
    SmsSender sms=new SmsSender();
    sms.SendSms("7275823164", "Your leave is accepted .");
    
    response.sendRedirect("../ManageLeave.jsp");
}
else if(res.equals("2"))
{
    new DBManager().executeNoneQuery("update leave set remark='Rejected' where leaveid="+leaveid);
    SmsSender sms=new SmsSender();
    sms.SendSms(mobile, "Your leave is rejected .");
    response.sendRedirect("../ManageLeave.jsp");
}

%>