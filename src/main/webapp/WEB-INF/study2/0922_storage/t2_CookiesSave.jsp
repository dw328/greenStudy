<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 숙제 쿠키 저장(mid, pwd, 체크상자(아이디 저장)그리고 다음에 들어오면 아이디가 나오는) -->
<%
	/*String mid = "abc1234";
	Cookie cookieMid = new Cookie("cMid", mid);
	cookieMid.setMaxAge(60*60*24);	//쿠키의 만료시간 (초):1일
	response.addCookie(cookieMid);
	
	String pwd = "1234";
	Cookie cookiepwd = new Cookie("cPwd", pwd);
	cookiepwd.setMaxAge(60*60*24);	//쿠키의 만료시간 (초):1일
	response.addCookie(cookiepwd);
	*/
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>t2_CookiesSave.jsp</title>
  <script>
  	alert("쿠기가 생성/저장 되었습니다.");
  	location.href ="<%=request.getContextPath()%>/T2_Cookies"; 
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
  
</div>
<p><br/></p>
</body>
</html>