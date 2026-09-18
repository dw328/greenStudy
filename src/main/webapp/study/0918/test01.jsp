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
  <title>test01.jsp</title>
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
  <!-- 이곳은 본문입니다. -->
  <p>이곳은 본문입니다.</p>
  <!-- 자바 코드 사용(스크립트릿) -->
  <%
  	//1~10까지의 합(자바주석)
  	//서브릿XX
  	System.out.println("이곳은 jsp view 입니다.");
  	int i =0, tot =0;
  	while(i<10){
  		i++;
  		tot += i;
  	}
  	System.out.println("1~10까지의 합은?" + tot);
  	//http(요청(request)->server->응답(respnse))
  	//현재 사용은 응답이기 때문에 외부라이브러리가 필요XX
  	out.println("1~10까지의 합은:" + tot);
  %>
  <div>JSP의 표현식</div>
  <!-- respnse의 응답 구조 -->
  <div>1~10까지의 합은 <%=tot %>입니다.</div>
  <%-- <div>이곳은 JSP <font color ='red'><%=tot %></font> 주석입니다.</div> (ctrl +shift + /)--%>
  <!-- 프론트는 개방, 백엔드는 뒤에서 해석 ->(페이지 소스 + html 구조)에 나오지 않는다.왜냐면 백엔드니깐~ -->
  <hr/>
 	<div><a href = "/greenStudy" class ="btn btn-success">greenStudy</a></div>
  <hr/>
</div>
<p><br/></p>
</body>
</html>