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
  database.query("select * from user;");
  ResultSet rs = database.getRS();
    out.println(rs);
  String name = request.getParameter("name");
  String account = request.getParameter("account");
  String word = request.getParameter("word");
  String image = request.getParameter("image");
  String message = "";
  if (name != null && account != null && word != null && image != null){
    database.connectDB();
      out.println(rs);
    database.insertData(name,account,word,image);
    message = "新增成功！";
      out.println("新增成功");
  }else{
    message = "新增失敗";
    out.println("新增失敗");
  }
  // database.insertData(account,password,name,email);
%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=big5">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Flat Registration Form Template</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">

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

</head>

  <body>
    <!-- Top menu -->
    <nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
            <span class="sr-only">Let's login!</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">There is so many cute Pokemon here!</a>
        </div>


        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="top-navbar-1">
          <ul class="nav navbar-nav navbar-right">
            <li>
              <span class="li-text">
                Put some text or
              </span>
              <a href="#"><strong>links</strong></a>
              <span class="li-text">
                here, or some icons:
              </span>
              <span class="li-social">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-envelope"></i></a>
                <a href="#"><i class="fa fa-skype"></i></a>
              </span>
            </li>
          </ul>
        </div>
      </div>
    </nav>


            <%-- <!-- Top content -->
            <div class="top-content">

                <div class="inner-bg">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2 text">
                                <h1><strong>Bootstrap</strong> Flat Registration Form</h1>
                                <div class="description">
                                	<p>
    	                            	This is a free responsive flat registration form made with Bootstrap.
    	                            	Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!
                                	</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                          <div class="col-sm-6 phone">
                            <img src="assets/img/iphone.png" alt="">
                          </div>
                            <div class="col-sm-5 form-box">
                              <div class="form-top">
                                <div class="form-top-left">
                                  <h3>Register to our App</h3>
                                    <p>Fill in the form below to get instant access:</p>
                                </div>
                                <div class="form-top-right">
                                  <i class="fa fa-pencil"></i>
                                </div>
                                <div class="form-top-divider"></div>
                                </div> --%>



                                <!-- Top content -->
                                <div class="top-content">

                                    <div class="inner-bg">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-sm-8 col-sm-offset-2 text">
                                                    <h1><strong>Pokemon</strong> cool Registration Form</h1>
                                                    <div class="description">
                                                      <p>
                                                        This are many cute Pokemons here!
                                                        Download it on <a href="http://azmind.com"><strong>LOGIN</strong></a>, customize and use it as you like!
                                                      </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                              <div class="col-sm-6 phone">
                                                <img src="assets/img/456.png" alt="">
                                              </div>
                                                <div class="col-sm-5 form-box">
                                                  <div class="form-top">
                                                    <div class="form-top-left">
                                                      <h3>確認資料</h3>
                                                        <p>check the information below:</p>
                                                    </div>
                                                    <div class="form-top-right">
                                                      <i class="fa fa-pencil"></i>
                                                    </div>
                                                    <div class="form-top-divider"></div>
                                                    </div>
                                                    <div class="form-bottom">
                                                      <h3>login</h3>
    <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <a>姓名:<%=name%><br>
                        帳號：<%=account%><br>
                        密碼：<%=word%><br>
                        <div class="image">
                            <img src="../images/<%=image%>" > </div>
                        <%-- <img   src="<%=image%>"></a><br> --%>
                        <button class="btn btn-primary" onclick="window.open('work.jsp','_self')" >回登入頁</button>
                      </div>
                    </div>
              </div>
              <!-- Javascript -->
              <script src="assets/js/jquery-1.11.1.min.js"></script>
              <script src="assets/bootstrap/js/bootstrap.min.js"></script>
              <script src="assets/js/jquery.backstretch.min.js"></script>
              <script src="assets/js/retina-1.1.0.min.js"></script>
              <script src="assets/js/scripts.js"></script>

</body>
