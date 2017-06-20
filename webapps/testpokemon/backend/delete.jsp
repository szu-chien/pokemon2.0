<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id = "database" class="com.database.DatabaseData">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database" value="3306" />
  <jsp:setProperty property="db" name="database" value="team3" />
  <jsp:setProperty property="user" name="database" value="team3" />
  <jsp:setProperty property="password" name="database" value="NCHUTeam3!" />
</jsp:useBean>
<%
  database.connectDB();
  request.setCharacterEncoding("UTF-8");
  // String p_name=request.getParameter("name");
  String p_id=request.getParameter("id");
  // String p_word=request.getParameter("word");
  // String p_account=request.getParameter("account");
  // String p_image=request.getParameter("image");
  // String p_inventory=request.getParameter("inventory");
  String message="";
  if(p_id != null){
    database.connectDB();
    database.deleteData(p_id);
    message="刪除成功!";
    out.println("成功");
  }else{
    message="刪除失敗!";
    out.println("失敗");
  }

  response.sendRedirect("./index.jsp");
  %>
