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
  String p_name=request.getParameter("name");
  String p_id=request.getParameter("id");
  String p_logo=request.getParameter("logo");
  String p_price=request.getParameter("price");
  String p_image=request.getParameter("image");
  String p_inventory=request.getParameter("inventory");
  if(p_name != null && p_id !=null && p_logo != null && p_price != null && p_image !=null && p_inventory!= null){
    database.connectDB();
    database.editData(p_id, p_name, p_logo, p_price, p_image, p_inventory);
  }
  database.query("select * from products;");
  ResultSet rs = database.getRS();
%>

<!DOCTYPE html>
<html lang="en">
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
                                                                        寶貝們
                                                                    </a>
                                                                </b>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row" style="height: 20px;"></div>
                                                <div class="card horizontal">
                                                    <div class="ui five column grid" id="cards">
                                                        <%
                                                        // 檢查資料庫是否有資料
                                                        if (rs != null){ // 搜尋資料庫資料 next會尋找下一筆資料
                                                          while(rs.next()){
                                                            String id = rs.getString("id");
                                                            String name = rs.getString("name");
                                                            String logo = rs.getString("logo");
                                                            String price = rs.getString("price");
                                                            String image = rs.getString("image");
                                                            String inventory = rs.getString("inventory");

                                                        %>
                                                        <form id = "form<%=id%>" action="index2.jsp" method="POST">
                                                        <%-- <div class="card-content"> --%>
                                                        <div class="column">
                                                            <%-- <div class="row"> --%>
                                                            <div class="ui link card">
                                                    <button type = "button" id = "edit<%=id%>" type="button"  class='ui blue button'>修改</button>
                                                                <a class="header"><%=id%></a>

                                                                <div class="image"  id = "image<%=id%>">
                                                                    <img id = "photoURL<%=id%>" src="../images/<%=image%>" width=50>
                                                                </div>

                                                                <div class="content">
                                                                    <a id = "name<%=id%>" class="header"><%=name%></a>
                                                                </div>

                                                                    <a  id = "price<%=id%>" class="header"><%=price%>元</a>

                                                                     <a id = "inventory<%=id%>" class="header">存貨:<%=inventory%></a>

                                                                    <a class="header" id = "logo<%=id%>"><%=logo%></a>

                                                                    <div class="content centered center aligned"></div>
                                                         <button id = "delete<%=id%>" type="button" class="btn btn-danger">刪除</button>
                                                            </div>
                                                        </div>
                                                                <div class="ui divider"></div>
</form>
                                                        <%-- <div class="card horizontal">
     --%>
                                                        <%-- <div class="card-stacked">
                    <div class="card-content">
                        <h style="font-size:20px;font-weight:bold;"><%=name%></h>
                        <p>帳號： <%=account%></p>
                        <p><%=word%></p>


                    </div>
                    </div>
                  </div> --%>

                                                    <%}}%>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="save-button" style="position: fixed; z-index: 999999; right: 30px; bottom: 30px;">
                                        <a class="btn btn-primary"  data-toggle="modal"  data-whatever="@mdo" class="ui green button"  onclick="window.open('newpokemon.html','_self')">+ 新增寶貝</a>
                                    </div>
                                </div>

                                <!-- /.row -->
                            </div>
          </div>
        </div>


        <!-- jQuery -->
        <script src="vendors/js/jquery.js"></script>


        <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Menu Plugin JavaScript -->
        <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
        <!--slimscroll JavaScript -->
        <script src="js/jquery.slimscroll.js"></script>
        <!--Wave Effects -->
        <script src="js/waves.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="js/custom.min.js"></script>
        <script>
        $(document).ready(function(){
      $("button").on("click",function(){
      var click_text=$(this).text();
      alert(click_text);
      switch(click_text){
        case "修改":
      var id=$(this).attr("id").split("edit")[1];
      $("#name" + id).html('<input style="width:100px;" type="text" name="name" id = "input_name' + id + '"value="' + $("#name" + id).text() + '" />');
      $("#image"+id).html('<img  style="width:100px;" id="open-media" class="ui medium bordered image" src="'+$("#photoURL"+id).attr("src")+'"><input type="file" name="image" onchange="previewFile()" id="input_image'+id+'"value="'+$("#photoURL"+id).attr("src")+'" />');
      // $("#image"+id).html('<input type="text" name="image" id="input_image'+id+'"value="'+$("#photoURL"+id).attr("src")+'" />');
      $("#price"+id).html('<input style="width:100px;" type="text" name="price" id="input_price'+id+'"value="'+$("#price"+id).text()+'" />');
      $("#logo" + id).html('<textarea  style="width:100px;" name="logo" id = "input_logo' + id + '"value="' + $("#logo" + id).text()  + '" >'+$("#logo" + id).text() +'</textarea>');
      // $("#description" + id).html('<textarea name="description" id = "input_description' + id + '"value="' + $("#description" + id).text() + '" >' + $("#description" + id).text() +'</textarea>');



      $("#inventory" + id).html('<input style="width:100px;" type="text" name="inventory" id = "input_inventory' + id + '"value="' + $("#inventory" + id).text() + '" >');
      $(this).attr("id","storeEdit" + id);
      $(this).html("儲存");
        break;
      case "儲存":
      var id = $(this).attr("id").split("storeEdit")[1];
      var name= $("#input_name"+id).val();
      var logo= $("#input_logo"+id).val();
      var image= $("#input_image"+id).val();
      var price= $("#input_price"+id).val();
      var inventory= $("#input_inventory"+id).val();
      // $("#name"+id).html(name);
      // $("#location"+id).html(location);
      // $("#description"+id).html(description);
      // $("#photo" + id).html('<img id = "photoURL' + id + '" src="' + photo +'" width=50>');
      // $(this).attr("id","edit" + id);
      // $(this).html("修改");
      var id_input = $("<input>").attr("type", "hidden").attr("name", "id").val(id);
      $("#form" + id).append(id_input);
      $("#form" + id).append($("#input_name" + id));
      $("#form" +id).append($("#input_logo" + id));
      $("#form" + id).append($("#input_price" + id));
      $("#form" + id).append($("#input_image" + id));
      $("#form" + id).append($("#input_inventory" + id));
      $("#form" + id).submit();
      break;


        case "刪除":
        var id = $(this).attr("id").split("delete")[1];

        var id_input = $("<input>").attr("type", "hidden").attr("name", "id").val(id);
        var name_input = $("<input>").attr("type", "hidden").attr("name", "name").val($("#name" +id).text());
        var image_input = $("<input>").attr("type", "hidden").attr("name", "image").val($("#photoURL" +id).attr("src"));
        var logo_input = $("<input>").attr("type", "hidden").attr("name", "logo").val($("#logo" +id).text());
        var price_input = $("<input>").attr("type", "hidden").attr("name", "price").val($("#price" +id).text());
        var inventory_input = $("<input>").attr("type", "hidden").attr("name", "inventory").val($("#inventory" +id).text());

        $("#form" + id).attr("action","delete2.jsp")

        $("#form" + id).append(id_input);
        $("#form" + id).append(name_input);
        $("#form" + id).append(image_input);
        $("#form" + id).append(logo_input);
        $("#form" + id).append(price_input);
        $("#form" + id).append(inventory_input);

        $("#form" + id).submit();
        break;
        }
          });
        });


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
                                <!-- jQuery -->
                                <script src="js/jquery.js"></script>

                                <!-- Bootstrap Core JavaScript -->
                                <script src="js/bootstrap.min.js"></script>
                            </body>
                        </html>
                    </html>
