<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<%@include file="../include/header.jsp"%>
  <div class="main">
 				<div class="box-header">
					<h1 class="box-title">새글쓰기</h3>
				</div>
				<!-- /.box-header -->
<!-- action에 경로가 없으면 현재 페이지 주소로 이동한다.-->
<form role="form" action="/ex/sboard/write" method="post">
		<h3> 제목  <input type="text"
				name='title' placeholder="제목을 입력하세요" style="width:100%"></h3> 
		<h2> 내용 
			<textarea name="content" rows="8" style="width:100%"
				placeholder="내용 입력하세요"></textarea></h2>
		<h2> 작성자 
			<input type="text"
				name="writer"  placeholder="작성자를 입력하세요"  style="width:100%"></h2> 
	<!-- /.box-body -->
		<button type="submit" class="btn">제목</button>
</form>
</div>
<%@include file="../include/footer.jsp"%>