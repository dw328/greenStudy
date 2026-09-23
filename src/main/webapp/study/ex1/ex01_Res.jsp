<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	String str = request.getParameter("str");
	String player = request.getParameter("result");
	String lagn ="";
	//한글변함 
	if(player.equals("win")){
		lagn = "우승"; 
	}else if(player.equals("defeat")){
		lagn = "패배"; 
	}else {
		lagn = "무승부"; 		
	}
%>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>ex01.jsp</title>
  <style>
  h2 {
  	text-align: center;
  }
  img{
  	display: block;
  	margin: auto;
  	
  }
  </style>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2 >가위,바위,보</h2>
  <form name ="myform" method ="get" action ="<%=request.getContextPath()%>/study/ex1/ex01Ok.java">
	  <div>
	  	<div><%=str%></div>
	  	<img src ="/greenStudy/study/images/04.png" style= "width: 400px; object-fit:cover;" >
	  </div>
	  <hr/>
	  <div style ="text-align: center"><%=lagn%></div>
	  <hr/>	  
  </form>
 		<div>
 			<a href = "/greenStudy " class ="btn btn-success">greenStudy</a>
 			<a href = "<%= request.getContextPath()%>/study/ex1/ex01.jsp" class ="btn btn-secondary">뒤로가기</a>
 			</div>  	
  <hr/>
</div>
<p><br/></p>
</body>
</html>