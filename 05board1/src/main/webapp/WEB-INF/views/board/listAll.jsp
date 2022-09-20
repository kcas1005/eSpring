<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/*tableStart*/
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
/*tableEnd*/
</style>
<script>
var result='${msg}';
if(result=='success'){
	alert('처리가 완료되었습니다.');
}
//result는  글을 등록하고 들어오면  success가 들어 있고,
//직접들어오면 아무것도 담겨있지 않는다.

window.onload=function(){
	document.getElementsByClassName("btn")[0]
	.addEventListener("click",function(){
		location.href="/ex/board/register";
	});
}
</script>
</head>
<body>
<h1>게시판</h1>
<table boarder="1" width="90%" id="customers">
	<tr>
	<th>bno</th>
	<th>title</th>
	<th>writer</th>
	<th>regdate</th>
	<th>viewCount</th>
	</tr>
	<c:forEach items="${list }" var="boardDto">
	<tr>
		<td>${boardDto.bno }</td>
		<td><a href='/ex/board/read?bno=${boardDto.bno}'>
		${boardDto.title }</a></td>
		<td>${boardDto.writer }</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" 
		value="${boardDto.regdate }" /> </td>
		<td>${boardDto.viewcnt }</td>		
	</tr>
	</c:forEach>
</table>
<button class="btn"> 글쓰기</button>

</body>
</html>





