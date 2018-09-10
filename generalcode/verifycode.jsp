<%
    if (session.getAttribute("otpcode") != null) {
        String otp1 = request.getParameter("otp").trim().toLowerCase();
        String otp2 = session.getAttribute("otpcode").toString().toLowerCase();
        if (otp1.equals(otp2)) {
            response.sendRedirect("../changepass.jsp");
        } else {
            out.print("<script>alert('OTP is Invalid "+otp1+" "+otp2+"');window.location.href='../otpverify.jsp';</script>");
            
        }
    } else {
        out.print("<script>alert('OTP is Invalid');window.location.href='../forgetpass.jsp';</script>");
        
    }
    

%>