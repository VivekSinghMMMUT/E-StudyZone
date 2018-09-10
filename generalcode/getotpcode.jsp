<%@page import="mypack.SmsSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
    String userid = request.getParameter("userid").trim();
    String mobile = request.getParameter("mobile").trim();
    String q = "select mobile from registration where regid='" + userid + "'";
    DBManager db = new DBManager();
    ResultSet rs = db.getResult(q);
    if (rs.next()) {
        if (mobile.equals(rs.getString("mobile"))) {

            session.setAttribute("userid", userid);
            
            String otp = db.getCapCode().toLowerCase();
            session.setAttribute("otpcode",otp);
            session.setMaxInactiveInterval(120);
            SmsSender sms = new SmsSender();
            sms.SendSms(mobile, "OTP : "+otp);
            response.sendRedirect("../otpverify.jsp");
        } else {
            out.print("<script>alert('User Invalid');window.location.href='../forgetpass.jsp';</script>");
        }
    } else {
        out.print("<script>alert('User Invalid');window.location.href='../forgetpass.jsp';</script>");

    }
%>