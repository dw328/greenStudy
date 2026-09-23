<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>ex1.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
<form name ="myform" method ="post" action="<%= request.getContextPath()%>/SubmitEx1">
 <table class ="table table-bordered text-center">
 	<tr>
 		<td colspan ="2"><h2>회원가입</h2></td>
 	</tr>
 	<tr>
	 	<th>아이디</th>
	 	<td><input type ="text" name ="mid" id ="mid" value="${cMid}" class ="form-control"></a></td>
 	</tr>
 	<tr>
 		<th>비밀번호</th>
	 	<td><input type ="password" name ="pwd" id ="pwd" value="${cPwd}" class ="form-control"></a></td>
 	</tr>
 	<tr>
	 	<td colspan ="2">
	 		<div class ="col">
	 			<input type ="checkbox" name ="checkbox" id ="checkbox" value="${cCheckBox}" size ="1">아이디 저장</a>
	 			<input type ="submit" value ="전송하기"  class="btn btn-success m-3"></a>
				<a href ="<%=request.getContextPath()%>/" class ="btn btn-danger">홈으로</a>
			</div>
	 	</td>
 	</tr>
 </table>
 </form>
</div>
<p><br/></p>
</body>
</html>