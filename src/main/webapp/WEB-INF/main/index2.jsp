<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--페이지 언어, 사용하고 있는 언어, 들어오는 UTF -->
<!-- 이곳은 html 주석입니다. -->

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>indsx.jsp</title>
  <script >
  // 이곳은 자바스크립트 한줄 주석입니다.
  /* 이곳은 자바스크립트 여러줄 주석입니다.*/
  </script>
  <style>
  /* 이곳은 css 주석입니다.*/
  </style>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>호랑이네 집에 오신걸 환영합니다!!!view</h2>
 	<hr/>
 	<div>
	 	<a href = "./study/0918/test01.jsp" class ="btn btn-success m-2">test01.jsp</a>
	 	<a href = "./study/0918/test02.jsp" class ="btn btn-primary m-2">test02.jsp</a>
	 	<a href = "./study/0918/test03.jsp" class ="btn btn-secondary m-2">test03.jsp</a>
	  <a href = "./study/0918/test04.jsp" class ="btn btn-info m-2">test04.jsp</a>
  </div>
  <div>
  	<a href = "./study/0918/test05.jsp" class ="btn btn-outline-success m-2">test05.jsp</a>
  	<a href = "./study/0918/test06.jsp" class ="btn btn-outline-success m-2">test06.jsp</a>
  </div>
  <div>
  <!-- 이거는 컨트롤러 -->
  	<a href = "<%=request.getContextPath() %>/T2_Cookies" class ="btn btn-outline-success m-2">쿠키연습</a>
  	<a href = "<%=request.getContextPath() %>/T3_session" class ="btn btn-outline-success m-2">세션연습</a>
  	<a href = "<%=request.getContextPath() %>/T4_Application" class ="btn btn-outline-success m-2">어플리케이션 연습</a>
  	<a href = "<%=request.getContextPath() %>/T5_storageTest" class ="btn btn-outline-warning m-2">스토리지 연습</a>
  </div>
  <div>
  <a href = "./study/ex1/ex01.jsp" class ="btn btn-outline-info m-2">ex01.jsp</a>
  <a href = "<%=request.getContextPath()%>/study/ex1/ex02.jsp" class ="btn btn-outline-danger ms-3">ex02.jsp</a>
  </div>
  <div><a href = "<%=request.getContextPath()%>/ex1" class ="btn btn-outline-warning m-2">ex01.jsp</a></div>
  <hr/>
</div>
<p><br/></p>
</body>
</html>