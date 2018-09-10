<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DBManager"%>
<%
String name=request.getParameter("name").trim();
String dob=request.getParameter("dob").trim();
String gender=request.getParameter("gender").trim();
String fathername=request.getParameter("fathername").trim();
String qualification=request.getParameter("qualification").trim();
String college=request.getParameter("college").trim();
String technology=request.getParameter("technology").trim();
String training=request.getParameter("training").trim();
String email=request.getParameter("email").trim();
String mobile=request.getParameter("mobile").trim();
String password=request.getParameter("password").trim();
String capcode=request.getParameter("capcode").trim();
String hcapcode=request.getParameter("hcapcode").trim();

DBManager db=new DBManager();
int regid=db.getAutoIncrement("regid", "registration");
if(capcode.equals(hcapcode))
{
 String q1="insert into registration values('"+regid+"','"+name+"','"+dob+"','"+gender+"','"+fathername+"','"+qualification+"','"+training+"','"+technology+"','"+email+"','"+mobile+"','"+db.getCurrentDate()+"','"+college+"')";
 String q2="insert into login values('"+regid+"','"+db.getEncryptPassword(password)+"','true','student')";
if(db.executeNoneQuery(q1)==true && db.executeNoneQuery(q2)==true)
{
    SmsSender sms=new SmsSender();
    sms.SendSms(mobile, "Hello ! "+name+" Your Registration is successfully. Your Regstration Id is : "+regid+" and Password is : "+password);
  out.print("<script>alert('Registration is Successfully');window.location.href='../registration.jsp';</script>");
}
else
{
  out.print("<script>alert('Registration is not Successfully');window.location.href='../registration.jsp';</script>");

}
}
else{
out.print("<script>alert('Invalid Captcha');window.location.href='../registration.jsp';</script>");
}
%>