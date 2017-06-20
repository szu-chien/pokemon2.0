<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<%-- <jsp:useBean id="database" class="com.database.Database">
    <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
    <jsp:setProperty property="port" name="database" value="3306"/>
    <jsp:setProperty property="db" name="database" value="team3"/>
    <jsp:setProperty property="user" name="database" value="team3"/>
    <jsp:setProperty property="password" name="database" value="NCHUTeam3!"/>
</jsp:useBean>

<%
  // 資料庫連接
  database.connectDB();
  // 執行sql指令
  database.query("select * from user;");
  ResultSet rs = database.getRS();
%> --%>

<%-- <script type="text/javascript">
      $(document).ready(function(){
        $("input").blur(function(){
            // if ($(this).val().length == 0) {
            //     $(this).addClass('error').after('<span class="error">filled!</span>');
            // }
            // 取得表單欄位值
            var accVal = $("#account").val();
            // 使用HTTP POST方法送出Ajax請求
            $.post("check.jsp", { account : accVal } ,
            function(data){
                // 取出XML元素值
                $("#result").html(data);
            });
        });
        $("input").focus(function(){
            $(this).removeClass('error').next('span').remove();
        });
      });
  </script> --%>

<%-- <% // 資料庫連接 database.connectDB(); // 執行sql指令 database.query("select * from user;"); ResultSet rs = database.getRS(); Object objname = session.getAttribute("login"); if(objname!=null){ // out.println("以登入成功,不必再登入");
response.sendRedirect("./search.jsp"); } %> --%>
<html>
<head>
    <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
                <meta name="description" content="前端與網頁資料庫之實例應用">
                    <meta name="author" content="venus_bird">

                        <title>Pokemon backend</title>

                        <!-- Bootstrap Core CSS -->
                        <link href="css/bootstrap.css" rel="stylesheet">

                            <!-- Semantic UI CSS -->
                            <link href="vendors/semantic-ui/dist/semantic.css" rel="stylesheet"></head>

                            <body>
                              <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                                <div class="navbar-header">
                                  <!-- <a class="navbar-brand" href="#index.html"><img src="images/icon2.png"></a> -->
                                  <a class="navbar-brand" href="#index.html">POKEMON Backend</a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                  <ul class="nav navbar-nav">
                                    <li>
                                      <a href="#" style="font-size: 25px;"><i class="inverted alarm icon"></i></a>
                                    </li>
                                    <li>
                                      <a href="#" style="font-size: 25px;"><i class="inverted user icon"></i></a>
                                    </li>
                                    <li>
                                      <a href="#" style="font-size: 25px;"><i class="inverted mail icon"></i></a>
                                    </li>
                                  </ul>
                                </div>
                              </nav>
                                    <%-- <h3>login</h3>
                                    <form action="login.jsp" method="post">

                                        <div class="form-group">
                                            <label for="account" class="control-label">帳號</label>
                                            <input type="text" class="form-control" name="account"></div>

                                            <div class="form-group">
                                                <label for="password" class="control-label">密碼</label>
                                                <input type="text" class="form-control" name="password"></div>

                                                <div class="modal-footer"> --%>


                                                <div class="content column thirteen wide" style="height: 855px;">
      <form method="post" action="register.jsp" class="ui large form">
        <%-- <input name="action" type="hidden" value="Insert"> --%>
        <div class="ui grid">
          <div class="column">
            <div class="ui clearing segment">
              <div class="inline fields">
                <div class="two wide field right aligned">
                  <label id="result">姓名</label>
                </div>
                <div class="fourteen wide field right aligned">
                  <input placeholder="姓名" name="name" type="text" value="">
                </div>
              </div>

              <div class="inline fields">
                <div class="two wide field right aligned">
                  <label>代碼</label>
                </div>
                <div class="fourteen wide field right aligned">
                  <input placeholder="代碼" name="account" type="text" value="">
                </div>
              </div>

              <div class="inline fields">
                <div class="two wide field right aligned">
                  <label>自我介紹</label>
                </div>
                <div class="fourteen wide field right aligned">
                  <textarea placeholder="簡短的一句話" name="word" type="text" value="" ></textarea>
                </div>
              </div>

              <div class="inline fields">
                  <div class="two wide field right aligned">
                      <label>相片連結</label>
                  </div>
                  <div class="fourteen wide field right aligned">
                     <textarea placeholder="放上好看的照片吧" class="form-control" name = "image" ></textarea>
                      <%-- <img id="open-media" class="ui medium bordered image" src="<%=image%>"> --%>

                  </div>
              </div>
          </div>
          <%-- <input type="submit" class="ui right floated blue button" value="確認加入" href=""> --%>
              <input type="submit" class="ui right floated blue button" value="註冊"/></div>
        </div>
      </form>
    </div>
  </div>
</div>









                                                    <%-- <input type="submit" class="btn btn-primary" action="login.jsp" method="post" value="登入"/>
                                                    <input type="button" class="btn btn-primary" onclick="window.open('testlogin.jsp','_self')" value="註冊"/></div> --%>



                    <script src="js/jquery.js"></script>

                    <!-- Bootstrap Core JavaScript -->
                    <script src="js/bootstrap.min.js"></script>

                </body>

            </html>

            <%-- <input type="submit" class="btn btn-primary" action="login.jsp" method="post" value="登入" id="bob"/>
<input type="button" onclick="window.open('register2.jsp','_self')" value="註冊" id="bob"/></div> --%>
