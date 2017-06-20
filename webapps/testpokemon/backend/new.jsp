<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id = "database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database" value="3306" />
  <jsp:setProperty property="db" name="database" value="team3" />
  <jsp:setProperty property="user" name="database" value="team3" />
  <jsp:setProperty property="password" name="database" value="NCHUTeam3!" />
</jsp:useBean>
<%
  database.connectDB();
  // 防止回傳遍亂碼
  request.setCharacterEncoding("UTF-8");
  database.query("select * from products;");
  ResultSet rs = database.getRS();
  String name=request.getParameter("name");
  // String id=request.getParameter("id");
  String logo=request.getParameter("logo");
  String price=request.getParameter("price");
  String image=request.getParameter("image");
  // String inventory=request.getParameter("inventory");
  String message="";

  if(name != null && logo != null && price != null && image !=null){
    database.connectDB();
    database.insertData(name,logo,price,image);
    message="新增成功";
  }else{
    message="新增失敗";
  }
%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="前端與網頁資料庫之實例應用">
        <meta name="author" content="venus_bird">

<script>
        function previewFile() {
      var preview = document.querySelector('#open-media');
      var file = document.querySelector('input[type=file]').files[0];
      var reader = new FileReader();

      reader.addEventListener("load", function() {
        preview.src = reader.result;
      }, false);

      if (file) {
        reader.readAsDataURL(file);
      }
    }
</script>
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
                                                    <a href="#" style="font-size: 25px;">
                                                        <i class="inverted alarm icon"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" style="font-size: 25px;">
                                                        <i class="inverted user icon"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" style="font-size: 25px;">
                                                        <i class="inverted mail icon"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </nav>

                                    <div class="container">
                                        <div class="main ui padded grid">
                                            <div id="left-sidebar" class="sidebar column three wide">
                                                <div class="ui fluid center aligned vertical text menu">
                                                    <a href="../pokemon/admin/page/chart.jsp" class="item" style="font-size:17px; font-family:Microsoft JhengHei; color: white">
                                                        <i class="large inverted grey area chart icon"></i>
                                                        統計圖表
                                                    </a>

                                                    <div class="ui divider"></div>
                                                    <div class="header item" style="font-size:17px; font-family:Microsoft JhengHei; color: #367295;">
                                                        <b>功能</b>
                                                    </div>
                                                    <div class="ui divider"></div>

                                                    <a href="index2.jsp" class="item" style="font-size:17px; font-family:Microsoft JhengHei; color: white">
                                                        <i class="large cube icon"></i>
                                                        寶貝管理
                                                    </a>

                                                    <a href="index.jsp" class="item" style="font-size:17px; font-family:Microsoft JhengHei; color: white">
                                                        <i class="large file text icon"></i>
                                                        會員一覽
                                                    </a>

                                                    <div class="ui divider"></div>
                                                    <!-- <div class="header item" style="font-size:17px; font-family:Microsoft JhengHei; color: #367295;"><b>會員</b></div>
            <div class="ui divider"></div>

            <a href="create2.html" class="item" style="font-size:17px; font-family:Microsoft JhengHei; color: white">
                 <i class="large inverted grey user icon"></i>
                 加入會員
              </a> -->
                                                </div>
                                            </div>
                                            <div class="content column thirteen wide" style="height: 855px;">
                                                <div style="background: #fff; height: 65px; border:1px #ccc solid;border-radius:5px;">
                                                    <div class="top menu column">
                                                        <div class="ui fluid center aligned vertical text menu">
                                                            <div href="{{ route('backend_index') }}" class="item" style="font-size:20px; font-family:Microsoft JhengHei;">
                                                                <b>
                                                                    <i class="large tag icon"></i>
                                                                    <a id="title_banner" style="color: #0c0c0c">
                                                                        會員
                                                                    </a>
                                                                </b>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                      <div class="row" style="height: 20px;"></div>

                                                              <!-- /.col-lg-12 -->
                                                <%-- <div class="card-content"> --%>
                                                <div class="column">
                                                    <%-- <div class="row"> --%>
                                                    <div class="ui link card">

                                                        <div class="image">
                                                            <img src="../images/<%=image%>" width=50>
                                                        </div>
                                                        <div class="content">
                                                            <a  class="header"><%=name%></a>
                                                        </div>
                                                            <a   class="header"><%=price%>元</a>
                                                            <a class="header" ><%=logo%></a>
                                                            <div class="content centered center aligned"></div>
                                              <button class="btn btn-primary" onclick="window.open('index2.jsp','_self')">確定</button>
                                                    </div>
                                                </div>


                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
            <footer class="footer text-center"> 2017 &copy; JSP 網頁程式設計範例</footer>
        </div>
        <!-- /#page-wrapper -->
    </div>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
</html>
