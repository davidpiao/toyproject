<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="epp.sayhi.toy.model.Product"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
</head>
<body>
	<!-- <script type="text/javascript">
		function send() {
			if (!uploadForm.price.value) {
				alert("가격을 입력해주세요.");
			} else {
				uploadForm.price.value = parseInt(uploadForm.price.value);
				uploadForm.submit();
			}
		}
	</script> -->
	<div id="header">
		<jsp:include page="/WEB-INF/views/navbar.jsp" />
	</div>
	<form commandName="u" name="editForm" action="../editok" method="POST">
		<table id="edit">
			<tr>
				<td>카테고리</td>
				<td><input type="text" name="category" value="${u.getCategory()}"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="${u.getName()}"/></td>
			</tr>
			<tr>
				<td>브랜드</td>
				<td><input type="text" name="brand" value="${u.getBrand()}"/></td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><input type="file" name="image" value="${u.getImage()}"/></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="price" value="${u.getPrice()}"/></td>
			</tr>
			<tr>
				<td>사이즈</td>
				<td><input type="text" name="size" value="${u.getSize()}"/></td>
			</tr>
		</table>
		<button type="button" onclick="history.back()">목록</button>
		<button type="button" onclick="send()">수정하기</button>
	</form>
</body>
</html>