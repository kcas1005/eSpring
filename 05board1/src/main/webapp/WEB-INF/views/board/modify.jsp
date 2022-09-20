<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	document.getElementById('listAll').addEventListener("click",function(){
		location.href="/ex/board/listAll";
	})
	
	document.getElementById('modify').addEventListener("click",function(){
		//document.getElementById('modifyForm').mthod="get";
		//document.getElementById('modifyForm').action="/ex/board/modify";
		document.getElementById('modifyForm').submit();
	})
}
</script>
</head>
<body>
<form id="modifyForm" method="post" action="/ex/board/modify">
	bno:<input type="text" name=bno style="width:100%"
	 value='${boardDto.bno }' readonly="readonly"><br>
	title:<input type="text" name=title style="width:100%" 
	value='${boardDto.title }' ><br>
	content:<textarea name=content  rows="8" style="width:100%"
	>${boardDto.content }</textarea><br>
	writer:<input type="text" name=writer style="width:100%" 
	value='${boardDto.writer }'><br>
</form>
<button id=modify > SAVE</button>
<button id=listAll > Cancel</button>

</body>
</html>