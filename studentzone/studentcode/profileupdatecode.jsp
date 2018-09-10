<%@page import="mypack.DBManager"%>
<%
    String name = request.getParameter("name").trim();
    String dob = request.getParameter("dob").trim();
    String gender = request.getParameter("gender").trim();
    String fathername = request.getParameter("fname").trim();
    String qualification = request.getParameter("qualification").trim();
    String college = request.getParameter("college").trim();
    String technology = request.getParameter("technology").trim();
    String training = request.getParameter("training").trim();
    String email = request.getParameter("email").trim();
    String mobile = request.getParameter("mobile").trim();
    DBManager db = new DBManager();
    String q = "update registration  set name='"+name+"',dob='"+dob+"',gender='"+gender+"',fname='"+fathername+"',qualification='"+qualification+"',training='"+training+"',technology='"+technology+"',college='"+college+"',email='"+email+"',mobile='"+mobile+"' where regid='"+session.getAttribute("uid") +"'";
      if(db.executeNoneQuery(q)==true)
      {
      out.print("<script>alert('Profile Updated');window.location.href='../viewprofile.jsp';</script>");

      }
      else
      {
            out.print("<script>alert('Profile is not Updated');window.location.href='../viewprofile.jsp';</script>");

      }
%>