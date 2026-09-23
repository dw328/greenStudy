<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
  <form name ="myform" method ="get" action ="/greenStudy/ex01Ok">
	  <div >
	  	<img src ="/greenStudy/study/images/04.png" width ="400px" >
	  </div>
	  <div class = "input-group mb-2">
			<input type = "text" value = "1.가위, 2.바위 ,3.보 중 원하는 것을 수로 입력하시오."  name = "player" id ="player" class = "form form-control mt-2"/>				  
	  </div>
	  <div class ="form-group">
			<input type ="submit"  value="결과 보기" class ="btn btn-primary "/>
			</div>
  </form>
  <hr/>
 		<div><a href = "/greenStudy " class ="btn btn-success">greenStudy</a></div>
  <hr/>
</div>
<p><br/></p>
</body>
</html>