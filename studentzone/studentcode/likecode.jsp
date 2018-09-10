<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
    String q1 = "select qid from userlike where userid='" + session.getAttribute("uid") + "' and lstatus=1 and qid='"+request.getParameter("qid")+"'";
    String q2 = "select qid from userlike where userid='" + session.getAttribute("uid") + "' and lstatus=0 and qid='"+request.getParameter("qid")+"'";
    DBManager db = new DBManager();
    ResultSet rs = db.getResult(q1);
    ResultSet rs2 = db.getResult(q2);
    if (rs.next()) {
        String uq = "update userlike set lstatus=0 where userid='" + session.getAttribute("uid") + "' and qid='"+request.getParameter("qid")+"'";
        db.executeNoneQuery(uq);
        db.getCon().commit();
        ResultSet rs1 = db.getResult("select count(*) from userlike where qid='" + request.getParameter("qid") + "'  and lstatus=1");
        int num = 0;
        if (rs1.next()) {
            num = rs1.getInt(1);
        }
        out.print(num);
    } else if (rs2.next()) {
        String uq = "update userlike set lstatus=1 where userid='" + request.getParameter("userid") + "' and qid='"+request.getParameter("qid")+"'";
        db.executeNoneQuery(uq);
        ResultSet rs1 = db.getResult("select count(*) from userlike where qid='" + request.getParameter("qid") + "'  and lstatus=1");
        int num = 0;
        if (rs1.next()) {
            num = rs1.getInt(1);
        }
        out.print(num);
    } else {
        String qq = "insert into userlike values('" + db.getAutoIncrement("lid", "userlike") + "','"+request.getParameter("qid") +"','" + session.getAttribute("uid") + "','" + db.getCurrentDate() + "','" + db.getCuurentTime() + "','1')";

        db.executeNoneQuery(qq);
        ResultSet rs1 = db.getResult("select count(*) from userlike where qid='" + request.getParameter("qid") + "' and lstatus=1");
        int num = 0;
        if (rs1.next()) {
            num = rs1.getInt(1);
        }
        out.print(num);

    }
    db.getCon().close();
   // out.println(q1);
%>