<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>观音山梦幻海岸</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
      <meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="description" content="This is my page">
	<!--

	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

      <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
      function hideURLbar(){ window.scrollTo(0,1); } </script>
      <!-- //for-mobile-apps -->
      <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
      <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
      <!-- js -->
      <script src="js/jquery-1.11.1.min.js"></script>
      <!-- //js -->
      <link href='https://fonts.googleapis.com/css?family=UnifrakturMaguntia' rel='stylesheet' type='text/css'>
      <link href='https://fonts.googleapis.com/css?family=Open+Sans:600,600italic,700,400' rel='stylesheet' type='text/css'>
      <!-- FlexSlider -->
      <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
      <script defer src="js/jquery.flexslider.js"></script>
      <script type="text/javascript">
          $(window).load(function(){
              $('.flexslider').flexslider({
                  animation: "slide",
                  start: function(slider){
                      $('body').removeClass('loading');
                  }
              });
          });
          function reloadCode(){
              var time = new Date().getTime();
              document.getElementById("imgcode").src=" <%=request.getContextPath() %>/servlet/ImageServlet?d="+time;
          }
      </script>
      <!-- //FlexSlider -->
      <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
  </head>

  <body>
  <!-- banner -->
  <div class="banner">
      <div class="container">
          <div class="header-nav">
              <nav class="navbar navbar-default">
                  <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                          <span class="sr-only">Toggle navigation</span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                      </button>
                      <div class="logo">
                          <a class="navbar-brand" href="index.jsp">观音山梦幻海岸 <span>Happy Holiday</span></a>
                      </div>
                  </div>

                  <!-- Collect the nav links, forms, and other content for toggling -->
                  <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                      <ul class="nav navbar-nav">
                          <li class="active"><a href="index.jsp">主页</a></li>
                          <li><a href="view.html">景点</a></li>
                          <li><a href="menu.html">帮助</a></li>
                      </ul>
                  </div><!-- /.navbar-collapse -->
              </nav>
          </div>
          <div class="banner-info">
              <div class="col-md-6 banner-info-left">
                  <h1>Have Fun</h1>

              </div>
              <div class="col-md-6 banner-info-right">
                  <div class="sap_tabs">
                      <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                          <ul class="resp-tabs-list">
                              <li class="resp-tab-item grid1" aria-controls="tab_item-0" role="tab"><span>Sign In</span></li>
                              <li class="resp-tab-item grid2" aria-controls="tab_item-1" role="tab"><span>Sign Up</span></li>
                              <div class="clear"></div>
                          </ul>
                          <div class="resp-tabs-container">
                              <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                                  <div class="facts">
                                      <div class="sign-in-form">
                                          <form method="post" action="<%=request.getContextPath() %>/servlet/LoginServlet">
                                          <div class="in-form">
                                                  <input type="text" placeholder="账户" name="id_p" required>
                                                  <input type="password" placeholder="密码" name="pass" required>
                                              <div class="ckeck-bg">
                                                  <div class="checkbox-form">
                                                      <div class="check-left">
                                                          <div class="check">
                                                              <p class="checkcode"><input type="text" placeholder="请输入验证码..."style="height: 12px" name="checkcode" required oninvalid="setCustomValidity('请输入验证码！')" oninput="setCustomValidity('')"/><a href="javascript:reloadCode();" class="imgcode"><img alt="验证码" id="imgcode" src="<%=request.getContextPath() %>/servlet/ImageServlet"/></a></p>
                                                          </div>
                                                          <div class="check">
                                                              <label class="checkbox"><input type="checkbox" name="checkbox" checked="" ><i> </i>记住密码</label>
                                                          </div>
                                                      </div>
                                                      <div class="check-right">
                                                              <input type="submit" value="登录">
                                                      </div>
                                                      <div class="clearfix"> </div>
                                                  </div>
                                              </div>
                                          </div>
                                          </form>
                                      </div>
                                  </div>
                              </div>
                              <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                  <div class="facts">
                                      <div class="sign-in-form">
                                          <form action="<%=request.getContextPath()%>/servlet/RegisterServlet" method="post">
                                          <div class="in-form Personal">
                                              <h4>个人信息</h4>
                                                  <input type="text" class="textbox" placeholder="请输入您的账户..." name="id" maxlength="20" required oninvalid="setCustomValidity('请填写账户！')" oninput="setCustomValidity('')">
                                                  <input type="text" class="textbox" placeholder="请输入您的电话..." name="tel" maxlength="11" required oninvalid="setCustomValidity('请填写电话！')" oninput="setCustomValidity('')">
                                              <h5>登录信息</h5>
                                                  <input type="password" class="password" placeholder="请输入您的密码..." name="password" maxlength="20" required oninvalid="setCustomValidity('请填写密码！')" oninput="setCustomValidity('')" >
                                                  <input type="submit" value="注册">
                                          </div>
                                          </form>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                  <script type="text/javascript">
                      $(document).ready(function () {
                          $('#horizontalTab').easyResponsiveTabs({
                              type: 'default', //Types: default, vertical, accordion
                              width: 'auto', //auto or any width like 600px
                              fit: true   // 100% fit in a container
                          });
                      });
                  </script>
              </div>
              <div class="clearfix"> </div>
          </div>
      </div>
  </div>

  <!--footer-->

  <div class="footer-bottom">
      <div class="container">
          <p>Copyright &copy; 2017.Administrator entrance <a href="http://www.cssmoban.com/" target="_blank" title="管理员入口">管理员入口</a> - Conductor entrance <a href="http://www.cssmoban.com/" title="售票员入口" target="_blank">售票员入口</a> - Ticket inspector entrance <a href="http://www.cssmoban.com/" title="验票员入口" target="_blank">验票员入口</a></p>
      </div>
  </div>
  <!--//footer-->
  <!-- for bootstrap working -->
  <script src="js/bootstrap.js"> </script>
  <!-- //for bootstrap working -->
  </body>
</html>
