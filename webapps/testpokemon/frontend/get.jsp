<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.DatabaseData">
    <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
    <jsp:setProperty property="port" name="database" value="3306"/>
    <jsp:setProperty property="db" name="database" value="team3"/>
    <jsp:setProperty property="user" name="database" value="team3"/>
    <jsp:setProperty property="password" name="database" value="NCHUTeam3!"/>
</jsp:useBean>
<%
  database.connectDB();
 request.setCharacterEncoding("UTF-8");
  database.query("select * from orders;");
  ResultSet rs = database.getRS();
    out.println(rs);
  String inventory = request.getParameter("inventory");
  String pid = request.getParameter("pid");
// out.println(pid);
  //
  // String word = request.getParameter("word");
  // String image = request.getParameter("image");
  // String message = "";
  // if (name != null && account != null && word != null && image != null){
  //   database.connectDB();
  //     out.println(rs);
  //   database.insertData(name,account,word,image);
  //   message = "新增成功！";
  //     out.println("新增成功");
  // }else{
  //   message = "新增失敗";
  //   out.println("新增失敗");
  // }
  // database.insertData(account,password,name,email);
%>
<%=inventory%>
<%=pid%>
