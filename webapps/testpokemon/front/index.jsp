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
        <title>pokemon shop</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/media-queries.css">
          <link href="css/semantic.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

 <link rel="stylesheet" type="text/css" href="vendors/sweetalert/dist/sweetalert.css">

    </head>

    <body>

        <!-- Loader -->
    	<div class="loader">
    		<div class="loader-img"></div>
    	</div>

		<!-- Top menu -->
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-no-bg" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp">pokemon Landing Page</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="scroll-link" href="#features">玩家登入</a></li>
						<li><a class="scroll-link" href="#how-it-works">我要註冊</a></li>
						<li><a class="scroll-link" href="#about-us">About</a></li>
					</ul>
				</div>
			</div>
		</nav>
    <!-- <div class="navbar-header"> -->
    <!-- 當在手機上的大小時 -->
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        <!-- Top content -->
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">

                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1 class="wow fadeInLeftBig">Pokemon <strong>Online Store</strong></h1>
                            <div class="description wow fadeInLeftBig">
                            	<p>
	                            一起往神奇寶貝大師之路前進吧!
                            	</p>
                            </div>


                        </div>
                    </div>

                </div>
            </div>


        </div>
        <%-- <div class="row">
            <div class="col-sm-12 testimonials section-description wow fadeIn">
              <div id = "word" style="cursor:pointer;background-color:rgba(30%,30%,40%,0.1);width:500px;height:100px;position:absolute;top:20px;left:430px;font-size:10px;color:rgba(30%,30%,40%,0.05);">
                <div style="color: black;font-size: 20px;">寶貝的話</div>
                <div id = "show_word" style="font-size: 2em;color: black;margin-top: 4vh;">
                  test....
                </div>
              </div> --%>

        <!-- Features -->
        <!-- <div class="features-container section-container">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-12 features section-description wow fadeIn">
	                    <h2><strong>CUTE</strong> features</h2>
	                    <div class="divider-1 wow fadeInUp"><span></span></div>
	                </div>
	            </div>
	            <div class="row">
                	<div class="col-sm-4 features-box wow fadeInUp">
	                	<div class="features-box-icon">
	                		<i class="fa fa-magic"></i>
	                	</div>
	                    <h3>Easy To Use</h3>
	                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                    </div>
                    <div class="col-sm-4 features-box wow fadeInDown">
	                	<div class="features-box-icon">
	                		<i class="fa fa-thumbs-o-up"></i>
	                	</div>
	                    <h3>Responsive Design</h3>
	                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                    </div>
                    <div class="col-sm-4 features-box wow fadeInUp">
	                	<div class="features-box-icon">
	                		<i class="fa fa-cog"></i>
	                	</div>
	                    <h3>Uses Bootstrap</h3>
	                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.</p>
                    </div>
	            </div>
	            <div class="row">
	            	<div class="col-sm-12 section-bottom-button wow fadeInUp">
                        <a class="btn btn-link-1 scroll-link" href="#more-features">Learn more</a>
	            	</div>
	            </div>
	        </div>
        </div> -->

		<!-- More features -->
        <!-- <div class="more-features-container section-container section-container-gray-bg">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-12 more-features section-description wow fadeIn">
	                    <h2><strong>More</strong> features</h2>
	                    <div class="divider-1 wow fadeInUp"><span></span></div>
	                </div>
	            </div>
	            <div class="row">
	            	<div class="col-sm-5 more-features-box wow fadeInLeft">
	                    <img src="assets/img/devices/iphone.png" alt="">
	                </div>
	                <div class="col-sm-7 more-features-box wow fadeInUp">

	                    <div class="more-features-box-text">
	                    	<div class="more-features-box-text-icon">
	                    		<i class="fa fa-paperclip"></i>
	                    	</div>
	                    	<h3>Ut wisi enim ad minim</h3>
	                    	<div class="more-features-box-text-description">
	                    		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
	                    		Ut wisi enim ad minim veniam, quis nostrud.
	                    	</div>
	                    </div>
	                    <div class="more-features-box-text">
	                    	<div class="more-features-box-text-icon">
	                    		<i class="fa fa-user"></i>
	                    	</div>
	                    	<h3>Quis nostrud exerci tat</h3>
	                    	<div class="more-features-box-text-description">
	                    		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
	                    		Ut wisi enim ad minim veniam, quis nostrud.
	                    	</div>
	                    </div>
	                    <div class="more-features-box-text">
	                    	<div class="more-features-box-text-icon">
	                    		<i class="fa fa-pencil"></i>
	                    	</div>
	                    	<h3>Sed do eiusmod tempor</h3>
	                    	<div class="more-features-box-text-description">
	                    		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
	                    		Ut wisi enim ad minim veniam, quis nostrud.
	                    	</div>
	                    </div>
	                    <div class="more-features-box-text">
	                    	<div class="more-features-box-text-icon">
	                    		<i class="fa fa-twitter"></i>
	                    	</div>
	                    	<h3>Minim veniam quis nostrud</h3>
	                    	<div class="more-features-box-text-description">
	                    		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
	                    		Ut wisi enim ad minim veniam, quis nostrud.
	                    	</div>
	                    </div>

	                </div>
	            </div>
	        </div>
        </div> -->

        <!-- Testimonials -->
        <div class="testimonials-container section-container">
          <div class="container">


                      <div class="divider-1 wow fadeInUp"><span></span></div>
                  </div>
              </div>

              <div class="row">
                  <div class="col-sm-10 col-sm-offset-1 testimonial-list wow fadeInUp">
                    <div role="tabpanel">
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="tab1">
                          <div class="testimonial-image">
                            <img src="assets/img/testimonials/1.jpg" alt="" data-at2x="assets/img/testimonials/1.jpg">
                          </div>
                          <div class="testimonial-text">
                                    <p>"我不是胖。我只是有點熱，老師說受熱會膨脹，你懂嗎！"<br>
                                      <a href="#">皮卡丘</a>
                                    </p>
                                  </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab2">
                          <div class="testimonial-image">
                            <img src="assets/img/testimonials/2.jpg" alt="" data-at2x="assets/img/testimonials/2.jpg">
                          </div>
                          <div class="testimonial-text">
                                    <p>
                                      "我這個人，愛過哭過瘋狂過，是有個遺憾，就是沒瘦過。"<br>
                                      <a href="#">傑尼龜</a>
                                    </p>
                                  </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab3">
                          <div class="testimonial-image">
                            <img src="assets/img/testimonials/3.jpg" alt="" data-at2x="assets/img/testimonials/3.jpg">
                          </div>
                          <div class="testimonial-text">
                                    <p>
                                      "因為我有雙下巴，所以碰到任何困難都不會低頭。"<br>
                                      <a href="#">小火龍</a>
                                    </p>
                                  </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab4">
                          <div class="testimonial-image">
                            <img src="assets/img/testimonials/4.jpg" alt="" data-at2x="assets/img/testimonials/4.jpg">
                          </div>
                          <div class="testimonial-text">
                                    <p>
                                      "放心，任何事情慢慢都會變好的，像我一開始只是胖，後來就變好胖。"<br>
                                      <a href="#">妙蛙種子</a>
                                    </p>
                                  </div>
                        </div>
                      </div>


                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active">
                          <a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab"></a>
                        </li>
                        <li role="presentation">
                          <a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab"></a>
                        </li>
                        <li role="presentation">
                          <a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab"></a>
                        </li>
                        <li role="presentation">
                          <a href="#tab4" aria-controls="tab4" role="tab" data-toggle="tab"></a>
                        </li>
                      </ul>
                    </div>
                  </div>
              </div>
          </div>
        </div>



        <!-- Page Content -->
<div class="container">
  <%-- <div id="products"> --%>

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
                  <div class="image"  id = "image<%=id%>">
                      <img id = "photoURL<%=id%>" src="../images/<%=image%>" width=50>
                  </div>

                  <div class="content">
                      <a id = "name<%=id%>" class="header"><%=name%></a>
                  </div>
                      <a  id = "price<%=id%>" class="header"><%=price%>元</a>
                      <a class="header" id = "logo<%=id%>"><%=logo%></a>

                      <div class="content centered center aligned"></div>

           <select id="number<%=id%>" class='ui fluid dropdown'>
            <option value='1'>1</option>" +
            <option value='2'>2</option>" +
            <option value='3'>3</option>" +
            <option value='4'>4</option>" +
            <option value='5'>5</option>" +
          </select>
            <br></br>
           <button  type="button" class="btn btn-danger"  onclick=" + "getValue("number<%=id%>");"+">收服</button>
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
  </div>


        <!-- Great support -->
        <!-- <div class="great-support-container section-container">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-12 great-support section-description wow fadeIn">
	                    <h2><strong>Great</strong> support</h2>
	                    <div class="divider-1 wow fadeInUp"><span></span></div>
	                </div>
	            </div>
	            <div class="row">
	            	<div class="col-sm-7 great-support-box wow fadeInLeft">
	                    <div class="great-support-box-text great-support-box-text-left">
	                    	<h3>Ut wisi enim ad minim</h3>
	                    	<p class="medium-paragraph">
	                    		Lorem ipsum dolor sit amet, <span class="colored-text">consectetur adipisicing</span> elit,
	                    		sed do eiusmod tempor incididunt ut labore et. Ut wisi enim ad minim veniam, quis nostrud.
	                    	</p>
	                    	<p>
	                    		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et.
	                    		Ut wisi enim ad minim veniam, quis nostrud.
	                    		Exerci tation ullamcorper suscipit <span class="colored-text">lobortis nisl</span> ut aliquip ex ea commodo consequat.
	                    		Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl.
	                    	</p>
	                    </div>
	                </div>
	                <div class="col-sm-5 great-support-box wow fadeInUp">
	                    <img src="assets/img/devices/pc.png" alt="">
	                </div>
	            </div>
	        </div>
        </div> -->

        <!-- How it works -->
        <!-- <div class="how-it-works-container section-container section-container-image-bg">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-12 how-it-works section-description wow fadeIn">
	                    <h2><strong>Get</strong>your pokemon!</h2>
	                    <div class="divider-1 wow fadeInUp"><span></span></div>
	                </div>
	            </div>
	            <div class="row">
                	<div class="col-sm-4 col-sm-offset-1 how-it-works-box wow fadeInUp">
	                	<div class="how-it-works-box-icon">1</div>
	                    <h3>find</h3>
	                    <p>findout your favorite pokemon</p>
                    </div>
                    <div class="col-sm-4 col-sm-offset-2 how-it-works-box wow fadeInDown">
	                	<div class="how-it-works-box-icon">2</div>
	                    <h3>BUy</h3>
	                    <p>buy it on this page</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1 how-it-works-box wow fadeInUp">
	                	<div class="how-it-works-box-icon">3</div>
	                    <h3>Take care</h3>
	                    <p>treat your pokemon nice</p>
                    </div>
                    <div class="col-sm-4 col-sm-offset-2 how-it-works-box wow fadeInDown">
	                	<div class="how-it-works-box-icon">4</div>
	                    <h3>have fun</h3>
	                    <p>become a master of pokemon</p>
                    </div>
	            </div>
	            <div class="row">
	            	<div class="col-sm-12 section-bottom-button wow fadeInUp">
                        <a class="btn btn-link-1 scroll-link" href="http://localhost/happy/backend/products/create2.html">Sign up now</a>
	            	</div>
	            </div>
	        </div>
        </div>
 -->



        <!-- Call to action -->
        <!-- <div class="call-to-action-container section-container section-container-image-bg">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-12 call-to-action section-description wow fadeInLeftBig">
	                    <h2><strong>Call</strong> to action</h2>
	                    <div class="divider-1 wow fadeInUp"><span></span></div>
	                    <p>
	                    	Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut
	                    	aliquip ex ea commodo consequat. Ut wisi enim ad minim veniam, quis nostrud.
	                    </p>
	                </div>
	            </div>
	            <div class="row">
	            	<div class="col-sm-12 section-bottom-button wow fadeInUp">
                        <a class="btn btn-link-1 scroll-link" href="#top-content">Sign up now</a>
	            	</div>
	            </div>
	        </div>
        </div> -->

        <!-- About us -->
        <div class="about-us-container section-container">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-12 about-us section-description wow fadeIn">
	                    <h2><strong>About</strong> Us!</h2>
	                    <div class="divider-1 wow fadeInUp"><span></span></div>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-sm-4 about-us-box wow fadeInUp">
		                <div class="about-us-photo">
		                	<img src="assets/img/about/1.jpg" alt="" data-at2x="assets/img/about/1.jpg">
		                </div>
	                    <h3>李思蒨</h3>
	                    <p>資管二</p>
	                    <div class="about-us-social">
		                	<a href="#"><i class="fa fa-facebook"></i></a>
		                	<a href="#"><i class="fa fa-dribbble"></i></a>
		                    <a href="#"><i class="fa fa-twitter"></i></a>
		                </div>
                    </div>
	                <div class="col-sm-4 about-us-box wow fadeInDown">
		                <div class="about-us-photo">
		                	<img src="assets/img/about/2.jpg" alt="" data-at2x="assets/img/about/2.jpg">
		                </div>
	                    <h3>李依靜</h3>
	                    <p>資管二</p>
	                    <div class="about-us-social">
		                	<a href="#"><i class="fa fa-facebook"></i></a>
		                	<a href="#"><i class="fa fa-dribbble"></i></a>
		                    <a href="#"><i class="fa fa-twitter"></i></a>
		                </div>
	                </div>
	                <div class="col-sm-4 about-us-box wow fadeInUp">
		                <div class="about-us-photo">
		                	<img src="assets/img/about/3.jpg" alt="" data-at2x="assets/img/about/3.jpg">
		                </div>
	                    <h3>郭佩禎</h3>
	                    <p>資管二</p>
	                    <div class="about-us-social">
		                	<a href="#"><i class="fa fa-facebook"></i></a>
		                	<a href="#"><i class="fa fa-dribbble"></i></a>
		                    <a href="#"><i class="fa fa-twitter"></i></a>
		                </div>
	                </div>
	            </div>
	        </div>
        </div>




        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/scripts.js"></script>



        <!-- <script src="js/jquery.js"></script> -->

        <!-- Data //ajax -->
        <%-- <script>
        function getValue(id){
  swal({
    title:"確認購買?",
    text: "點選確認後，訂單確認！",
    type: "warning",
    showCancelButton: true,
    confirmButtonColor: "#00BBFF",
    confirmButtonText: "Confirm",
    closeOnConfirm: false
  },
  function(){
    swal("訂單確認!", "您的訂單已加入。", "success");

    var e = document.getElementById("number<%=id%>");
    var value = e.options[e.selectedIndex].value;

    console.log("id = " + e + "value = " + value );
    document.location.href = './order.php?products_id=' + id + '&numbers=' + value ;
  });
}
  </script> --%>

        <!-- Sweetalert -->
        <script src="vendors/sweetalert/dist/sweetalert.min.js"></script>
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>
    <%-- <script>
    $(document).ready(function(){
      $.get('admin/page/word.jsp',function(text){
        $("#show_word").html(text.replace(/\s+/g, ''));
      });
    });
     $("#word").on("click",function(){
       $.get('admin/page/word.jsp',function(text){
         $("#show_word").html(text.replace(/\s+/g, ''));
       });
     });

    </script> --%>
</html>
