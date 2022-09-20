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
	document.getElementById('remove').addEventListener("click",function(){
		location.href="/ex/board/remove?bno=${boardDto.bno}";
	})
	document.getElementById('modify').addEventListener("click",function(){
		location.href="/ex/board/modify?bno=${boardDto.bno}";
	})
}
</script>
</head>
<body>


	title:<input type="text" name=title style="width:100%" value='${boardDto.title }' readonly="readonly"><br>
	content:<textarea name=content  rows="8" style="width:100%" readonly="readonly">${boardDto.content }</textarea><br>
	writer:<input type="text" name=writer style="width:100%" value='${boardDto.writer }'  readonly="readonly"><br>
	
<button id=listAll >List  All</button>
<button id=remove >remove</button>
<button id=modify >modify</button>	


</body>
</html>