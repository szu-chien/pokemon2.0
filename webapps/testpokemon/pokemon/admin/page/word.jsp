<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.util.*"%>
<jsp:useBean id = "database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database" value="3306" />
  <jsp:setProperty property="db" name="database" value="team3" />
  <jsp:setProperty property="user" name="database" value="team3" />
  <jsp:setProperty property="password" name="database" value="NCHUTeam3!" />
  </jsp:useBean>
  <jsp:useBean id = "database2" class="com.database.Database">
    <jsp:setProperty property="ip" name="database2" value="140.120.49.205" />
    <jsp:setProperty property="port" name="database2" value="3306" />
    <jsp:setProperty property="db" name="database2" value="team3" />
    <jsp:setProperty property="user" name="database2" value="team3" />
    <jsp:setProperty property="password" name="database2" value="NCHUTeam3!" />
    </jsp:useBean>
  <%
  database.connectDB();
  database.query("select COUNT(id) AS len from talks;");
  ResultSet rs = database.getRS();

  database2.connectDB();
  database2.query("select * from talks;");
  ResultSet rs2 = database2.getRS();

int len=0;
  if (rs != null){
    while(rs.next()){
      len =rs.getInt("len");
    }
  }

  Double d = Math.random()*100 ;
  Integer r = d.intValue(); // i becomes 5
  String t =null;
  List<String> word_list = new ArrayList<String>();
    int i = r%len;
    if (rs2 != null){
      while(rs2.next()){
        word_list.add(rs2.getString("talk"));
        // t+=rs2.getString("talk");
      }
    }
  t = word_list.get(i);
  out.print(t);
  %>
