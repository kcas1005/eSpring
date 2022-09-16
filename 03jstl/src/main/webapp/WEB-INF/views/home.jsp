<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
el 과 jstl
<br>
el 화면 출력방법
<br>
jstl 데이터 처리 화면 구성방법
<br>
<hr>
${num } 모델에num이라는 키값이 들어 있다면 num 키에 들어 있는 값이 출력된다.
<br>
${object.name } 객체.필드 형태로 객체데이터 출력 모델에 담겨져 있는 데이터가 객체일때 사용
<br>
<hr>
${10+20} 연산
<br>
jstl 상단에 taglib가 있어야 동작한다.
<br>
<hr>
<c:set var="income" value="${400*3 }"/>
<c:out value="${income }"/>
<br>
<hr>
if<br>
<c:if test="${income>800}">
	<p>${income }값은 800이상</p>
</c:if>
<hr>
choose
<br>
<c:choose>
	<c:when test="${income<=1000 }">
		<p>1000보다 작음</p>
	</c:when>
	<c:when test="${income<=2000 }">
		<p>2000보다 작음</p>
	</c:when>
	<c:when test="${income<=3000 }">
		<p>3000보다 작음</p>
	</c:when>
	<c:otherwise>
		모두 조건에 안맞음
	</c:otherwise>
</c:choose>
<hr>
반복문
<br>
<ol>
<c:forEach var="j" begin="1" end="3">
	<li>${j }<c:out value="${j }"/></li>
</c:forEach>
</ol>
<br><br><br>
<hr>
name:${name }<br>
age:${age }<br>
human.name:${human.name}<br>
human.age:${human.age}<br>
<br>
<hr>
<c:forEach var="item" items="${list }" varStatus="status">
	index:${status.index } 현재 몇번째 휴먼객체인가<br>
	첫번째 휴먼객체인가?:${status.first } true false값을 가짐<br>
	마지막 휴먼 객체인가?:${status.last } true false값을 가짐<br>
	
	${status.index }번째 휴먼객체 name :${item.name }<br>
	${status.index }번째 휴먼객체 age :<${item.age }<br>
	
</c:forEach>
<br>
<hr>
list:${list }
<br>
<hr>
<c:forEach var="item" items="${list }" varStatus="status">
${item }<c:if test="${not status.last }">,</c:if>
</c:forEach>
<br>
<hr>
<c:forTokens var="city" items="서울.인천,대구.부산" delims=",">
	${city }
	<br>
</c:forTokens>
<br>
<hr>
<c:forTokens var="city" items="서울.인천,대구.부산" delims=",.">
	${city }
	<br>
</c:forTokens>
<br><br>
<hr>

<!--3자리 마다 컴마로 표시한 숫자  -->
<fmt:formatNumber value="1234567.89" />
<br>
<!--groupingUsed="false" 부분을 추가하면 3자리 마다 컴마로 표시 하지 않음 -->
<fmt:formatNumber value="1234567.89" groupingUsed="false"/>
<br>
<!--숫자를 퍼센트로 출력  1이 100% 이다. -->    
<fmt:formatNumber value="0.5" type="percent" />
<br>
<!-- 돈단위를 넣어서 출력  -->
<fmt:formatNumber value="10000" type="currency" />
<br>
<!-- 원하는 돈표시 선택  -->
<fmt:formatNumber value="10000" type="currency" currencySymbol="$"/>
<br>
<hr>

<!--
 패턴대로 출력하는 방식 
#해당 자리가 없으면 출력하지 않음 0 해당 자리가 없으면 0으로 출력
  -->
<fmt:formatNumber value="1234567.8912345" pattern="#,#00.0#"/>
<br>
<fmt:formatNumber value="1234567.8912345" pattern=".000"/>
<br>
<fmt:formatNumber value="1234567.10" pattern=".00"/>
<br>
<fmt:formatNumber value="1234567.10" pattern=".0#"/>
<br>
<fmt:formatNumber value="1234567.0" pattern=".0"/>
<br>
<fmt:formatNumber value="1234567.0" pattern=".#"/>
<br>
<hr>

<c:set var="now" value="<%=new java.util.Date()%>" />
<fmt:formatDate value="${now }" pattern="yyyy"/>
<br>
<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일  HH시 mm ss"/>
<br>
</body>
</html>
