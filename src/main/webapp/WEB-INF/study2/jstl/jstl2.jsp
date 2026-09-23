<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<c:set var ="ctp" value ="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  <title>jstl2.jsp</title>
</head>
<body>
<%@ include file ="/include/header.jsp" %>
<%@ include file ="/include/nav.jsp" %>
<p><br/></p>
<div class="container">
  <h2>jstl2.jsp(반복문)</h2>
   <hr/>
  	<div class ="text-end"><a href = "${ctp}/study2/jstl/JstlMenu" class ="btn btn-warning">돌아가기</a></div>
  <hr/>
  1~10까지 출력?
  <c:forEach var ="i" begin ="1" end ="10">
  	${i} /
  </c:forEach>
  <br/>
<%
	String[] cards ={"국민카드","BC카드","Lg카드","삼성카드","농협","비자"};
	pageContext.setAttribute("cards", cards);
%>
  	1번: 
  	<c:forEach var = "card" items = "${cards}">
  		${card} /
  	</c:forEach>
  	<br/>
  	2번: <!-- count,index, first, last -->
  	<c:forEach var = "card" items = "${cards}" varStatus ="st">
  		${st.count},${st.index},${st.first},${st.last},${st.current} :${card} <br/>
  	</c:forEach>
  	<br/>
  	3번: <br/>
  	<c:forEach var = "kards" items = "${kcards}" varStatus ="st">
  		${st.count},${st.index},${st.first},${st.last},${st.current} :${kards} <br/>
  	</c:forEach>
  	<br/>
		<hr/>
		<h4>사용예재</h4>
		<h5>1. 구구단 5단을 출력하시오</h5>
		<c:forEach var ="i" items="${i}">
			${i} /
		</c:forEach>
		<br/>
		<h5>2. 구구단 3단~5단 출력하시오(2중 for문)</h5>
		
		
		<br/>
		<h5>3. 저장된 그림 5장 출력하시오(13.png~ 17.png)</h5>
		<c:set var="im" value="14"/>
  	<img src="${ctp}/images/${im}.png" width="200px"/><br/> 
  	<img src="${ctp}/images/${im}.png" width="200px"/><br/> 
  	<hr/>
  	<h4>vos값 출력</h4>
  	<c:forEach var ="vo" items ="${vos}">
  		${vo} /
  	</c:forEach>
</div>
<p><br/></p>
<%@ include file ="/include/footer.jsp" %>
</body>
</html>