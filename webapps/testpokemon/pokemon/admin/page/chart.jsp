<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
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
<jsp:useBean id = "database3" class="com.database.Database">
  <jsp:setProperty property="ip" name="database3" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database3" value="3306" />
  <jsp:setProperty property="db" name="database3" value="team3" />
  <jsp:setProperty property="user" name="database3" value="team3" />
  <jsp:setProperty property="password" name="database3" value="NCHUTeam3!" />
</jsp:useBean>
<jsp:useBean id = "database4" class="com.database.Database">
  <jsp:setProperty property="ip" name="database4" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database4" value="3306" />
  <jsp:setProperty property="db" name="database4" value="team3" />
  <jsp:setProperty property="user" name="database4" value="team3" />
  <jsp:setProperty property="password" name="database4" value="NCHUTeam3!" />
</jsp:useBean>
<jsp:useBean id = "database5" class="com.database.Database">
  <jsp:setProperty property="ip" name="database5" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database5" value="3306" />
  <jsp:setProperty property="db" name="database5" value="team3" />
  <jsp:setProperty property="user" name="database5" value="team3" />
  <jsp:setProperty property="password" name="database5" value="NCHUTeam3!" />
</jsp:useBean>
<jsp:useBean id = "database6" class="com.database.Database">
  <jsp:setProperty property="ip" name="database6" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database6" value="3306" />
  <jsp:setProperty property="db" name="database6" value="team3" />
  <jsp:setProperty property="user" name="database6" value="team3" />
  <jsp:setProperty property="password" name="database6" value="NCHUTeam3!" />
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


//orders get result
database2.connectDB();
database2.query("select * from orders;");
ResultSet rs2 = database2.getRS();

database3.connectDB();
database3.query("SELECT SUM(products.price*orders.numbers) AS income FROM orders JOIN products on orders.products_id = products.id");
ResultSet rs3 = database3.getRS();

database4.connectDB();
database4.query("SELECT name, inventory FROM products");
ResultSet rs4 = database4.getRS();


database5.connectDB();
database5.query("SELECT products.name, SUM(orders.numbers) AS numbers , SUM(products.price*orders.numbers) AS income FROM `orders` LEFT JOIN `products` ON orders.products_id = products.id GROUP BY products_id ORDER BY SUM(orders.numbers) DESC LIMIT 3 ");
ResultSet rs5 = database5.getRS();
// "SELECT SUM(products.price*orders.numbers) AS income FROM `orders` JOIN `products` on orders.products_id = products.id"

database6.connectDB();
database6.query("SELECT inventory FROM products");
ResultSet rs6 = database6.getRS();

%>
 <!DOCTYPE html>
<html lang="zh-hant">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>管理後台</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">

    <link href="css/semantic.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="css/colors/default.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>


<![endif]-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>



</head>

<body class="fix-header">
    <!-- ============================================================== -->
    <!-- Preloader -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Wrapper -->
    <!-- ============================================================== -->
    <div id="wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
                    <!-- Logo -->
                    <a class="logo" href="word.jsp"></a>
                    <h style="font-size:25px;">pokemon後台管理</h>

                </div>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- End Top Navigation -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                  <li style="padding: 70px 0 0;">
                      <a href="chart.jsp" class="waves-effect"><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>統計圖表</a>
                  </li>
                    <li style="padding: 70px 0 0;">
                        <a href="../../../backend/index2.jsp" class="waves-effect"><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>寶貝管理</a>
                    </li>
                    <li style="padding: 70px 0 0;">
                        <a href="../../../backend/index.jsp" class="waves-effect"><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>訓練師管理</a>
                    </li>
                  </ul>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Left Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page Content -->
        <!-- ============================================================== -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">統計圖表</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">

                        <ol class="breadcrumb">
                            <li><a href="#">pokemon管理系統</a></li>
                            <li class="active">資料管理</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /row -->


                <%-- orders --%>
                <%
                int count2=0;
                int sum_numbers=0;
                  if (rs2 != null){
                    while(rs2.next()){
                      sum_numbers+=rs2.getInt("numbers");
                      count2++;
                    }
                  }
                %>

                <%-- products --%>
                <%
                int count=0;
                  if (rs != null){
                    while(rs.next()){
                      count++;
                    }
                  }
                %>
                <div class="row" style="height: 20px;"></div>

        <div class="ui five column grid">
          <div class="four wide column">
                 <div class="ui card statistic">
                     <div class="ui divider"></div>

                     <div class="value" id="products_number">
                       <%=count%>
                     </div>
                     <div class="label" style="font-size:17px; font-family:Microsoft JhengHei;">
                         產品項數
                     </div>
                     <div class="ui divider"></div>
                 </div>
             </div>
             <div class="four wide column">
                 <div class="ui card statistic">
                     <div class="ui divider"></div>
                     <div class="value" id="sales_number">
                       <%=sum_numbers%>
                     </div>
                     <div class="label" style="font-size:17px; font-family:Microsoft JhengHei;">
                         產品售量
                     </div>
                     <div class="ui divider"></div>
                 </div>
             </div>

             <%-- income --%>
             <%
             int incomes = 0;
               if (rs3 != null){
                 while(rs3.next()){
                   incomes+=rs3.getInt("income");
                 }
               }
             %>
             <div class="four wide column">
                 <div class="ui card statistic">
                     <div class="ui divider"></div>
                     <div class="value" id="income_number">
                       <%=incomes%>
                     </div>
                     <div class="label" style="font-size:17px; font-family:Microsoft JhengHei;">
                         收入金額
                     </div>
                     <div class="ui divider"></div>
                 </div>
             </div>

             <div class="four wide column">
                 <div class="ui card statistic">
                     <div class="ui divider"></div>

                     <div class="value" id="transaction_number">
                       <%=count2%>
                     </div>
                     <div class="label" style="font-size:17px; font-family:Microsoft JhengHei;">
                         交易次數
                     </div>
                     <div class="ui divider"></div>
                 </div>
             </div>
        </div>
        <div class="row" style="height: 20px;"></div>
                <!-- /.row -->

  <%-- 圓餅圖 --%>



                <div class="eight wide column">
                            <div class="ui card" style="width: 100%; height: 100%">
                                <div class="ui divider"></div>
                                <div class="content">

                                    <canvas id="chart3" style="width: 40%;height: 40%">

                                      <script>
                                      var ctx3 = document.getElementById("chart3").getContext("2d");
                                      var color = ["#F7464A", "#E2EAE9", "#D4CCC5", "#949FB1", "#4D5360"];
                                      var datadoughnut =  new Array([<%=count%>]);　
                                      var i=0;
                                      <%
                                        if (rs6 != null){
                                          while(rs6.next()){
                                            %>
                                        <%int ivt=rs6.getInt("inventory");%>
                                        datadoughnut[i] = {
                                          value: <%=ivt%>,
                                          color: color[i]
                                        }
                                        i++;
                                        <%}}%>
                                      new Chart(ctx3).Pie(datadoughnut);
                                      </script>

                                      hi</canvas>




                                </div>
                                <div class="row center aligned centered">
                                    <div class="label" style="font-size:20px; font-family:Microsoft JhengHei; color: #000;"><b>
                                          數量
                                    </b></div>
                                </div>

                                <div class="ui divider"></div>
                              </div>

                        </div>

                        <div class="row" style="height: 20px;"></div>


                        <div class="sixteen wide column">
            <div class="ui card" style="width: 100%;">



<%-- 排行榜 --%>
                <table class="ui celled table">
                      <thead>
                      <tr>
                          <th>產品名稱</th>
                          <th>售出總數量</th>
                          <th>售出總金額</th>
                      </tr>
                      </thead>
                      <tbody id = "top">

                        <%
                          if (rs5 != null){
                            while(rs5.next()){
                              %>
                            <%
                              String na =rs5.getString("name");
                              int nb =rs5.getInt("numbers");
                              int ic =rs5.getInt("income");
                              %>
                              <tr>
                              <td><%=na%></td>
                              <td><%=nb%></td>
                              <td><%=ic%></td>
                              </tr>
                              <%
                            }
                          }
                        %>

                      </tbody>
                  </table>
              </div>
          </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
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

    $("#form" + id).attr("action","delete.jsp")

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


    //預覽圖
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
</body>

</html>
