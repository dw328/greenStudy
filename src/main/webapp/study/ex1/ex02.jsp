<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>ex02.jsp</title>
  <style>
  	
  </style>
</head>
<body>
<p><br/></p>
<div class="container">
  <form name = "myform" method ="post" action="<%=request.getContextPath()%>/Exam02Ok">
  <h2>랜덤돌리기</h2>
  <img src ="">
  <div class ="input-group">
	  <div class ="input-group-text">가게 </div>
	  <input type ="text" value ="가게1" name ="foodshop1" id ="foodshop1" class="form-control"/>
	  <input type ="text" value ="가게2" name ="foodshop2" id ="foodshop2" class="form-control"/>
	  <input type ="text" value ="가게3" name ="foodshop3" id ="foodshop3" class="form-control"/>
	  <input type ="text" value ="가게4" name ="foodshop4" id ="foodshop4" class="form-control"/>
	  <input type ="text" value ="가게5" name ="foodshop5" id ="foodshop5" class="form-control"/>
	  <input type ="submit" class ="btn btn-success"/>
	</div>  
	<hr/>
  </form>
</div>
<p><br/></p>
</body>
</html>