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
  // 資料庫連接
  database.connectDB();
    request.setCharacterEncoding("UTF-8");
  // 執行sql指令
  database.query("select * from user;");
  ResultSet rs = database.getRS();
  Object objname = session.getAttribute("login");
  if(objname!=null){
      // out.println("以登入成功,不必再登入");
      response.sendRedirect("./search.jsp");
  }
%>

<head>

    <meta charset="utf-8">
      <meta http-equiv="Content-Type" content="text/html; charset=big5">
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
                                            <img src="assets/img/123.jpg" alt="">
                                          </div>
                                            <div class="col-sm-5 form-box">
                                              <div class="form-top">
                                                <div class="form-top-left">
                                                  <h3>登入商店</h3>
                                                    <p>Fill in the form below to get instant access:</p>
                                                </div>
                                                <div class="form-top-right">
                                                  <i class="fa fa-pencil"></i>
                                                </div>
                                                <div class="form-top-divider"></div>
                                                </div>
                                                <div class="form-bottom">
                                                  <h3>login</h3>
      <form action="login.jsp" method="post">
      <div class="form-group">
          <label for="account" class="control-label">姓名</label>
          <input type="text" class="form-control" name="name"></div>
          <div class="form-group">
              <label for="password" class="control-label">代號</label>
              <input type="text" class="form-control" name="account"></div>
              <div class="modal-footer">
                  <input type="submit" class="btn btn-primary" action="login.jsp" method="post" value="登入" />
                  <input type="button" class="btn btn-primary" onclick="window.open('testlogin.jsp','_self')" value="註冊" /></div>
            </div>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>


                            <!-- Javascript -->
                            <script src="assets/js/jquery-1.11.1.min.js"></script>
                            <script src="assets/bootstrap/js/bootstrap.min.js"></script>
                            <script src="assets/js/jquery.backstretch.min.js"></script>
                            <script src="assets/js/retina-1.1.0.min.js"></script>
                            <script src="assets/js/scripts.js"></script>

                            <!--[if lt IE 10]>
                                <script src="assets/js/placeholder.js"></script>
                            <![endif]-->

                          </body>

                          </html>

<%-- <input type="submit" class="btn btn-primary" action="login.jsp" method="post" value="登入" id="bob"/>
<input type="button" onclick="window.open('register2.jsp','_self')" value="註冊" id="bob"/></div> --%>
