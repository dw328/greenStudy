<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>test1.jsp</title>
</head>
<body>
<!-- ~.com <- 도메인이다...ip를 도메인으로 바꾸는걸 DMS이다. -->
<!-- 웹서버이다..(wedserver)jsp을 사용하면 무조건 서브릿을 사용한다. -->
<p><br/></p>
<div class="container">
  <h2>test1.jsp</h2>
  <hr/>
  <!--test1.jsp입니다.  -->
  <%-- <%= new Date() %> --%>
  <!-- test2에서 값을 줘야하는데 안 줘서 에러남 -->
  <p><a href ="test2.jsp" class ="btn btn-success">1.test2.jsp</a></p>
  <hr/>  
  <!-- p><a href ="test2.jsp?변수=값&(그리고)변수=값">test2.jsp</a></p> -->
  <p><a href ="test2.jsp?su1=10&su2=20" class="btn btn-primary">2.test2.jsp</a></p>
  <p><a href ="test2_3.jsp?su1=30&su2=40" class="btn btn-secondary">3.test2_3.jsp</a></p>
</div>
<p><br/></p>
</body>
</html>