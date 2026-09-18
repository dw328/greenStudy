<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>test05.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>test05.jps</h2>
  	<form name ="myform" method = "post" action ="test05Ok.jsp">
	  	<div class = "input-group">
		  	<div class = "input-group-text">성명</div>
		  	<input type ="text" name ="name" id = "name" value = "홍길동" class ="font-control"/>
	  	</div>
	  	<div class = "input-group">
	  	 <div class = "input-group-text">나이</div>
		  	<input type ="number" name ="age" id = "age" value = "21" class ="font-control"/>
		  	<input type ="submit" value="확인" class ="btn btn-primary"/>
	  	</div>
  </form>
  <hr/>
 	<div><a href = "/greenStudy" class ="btn btn-success">greenStudy</a></div>
  <hr/>
</div>
<p><br/></p>
</body>
</html>