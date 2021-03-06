<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<script type="text/javascript">
		function send() {
			if (!uploadForm.price.value) {
				alert("가격을 입력해주세요.");
			} else {
				uploadForm.price.value = parseInt(uploadForm.price.value);
				uploadForm.submit();
			}
		}
	</script>
	<div id="header">
		<jsp:include page="/WEB-INF/views/navbar.jsp" />
	</div>
	<form name="uploadForm" action="uploadok.jsp" method="post">
		<table id="upload">
			<tr>
				<td>카테고리</td>
				<td><input type="text" name="category" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>브랜드</td>
				<td><input type="text" name="brand" /></td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><input type="file" name="image" /></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td>사이즈</td>
				<td><input type="text" name="size" /></td>
			</tr>
		</table>
		<button type="button" onclick="history.back()">목록</button>
		<button type="button" onclick="send()">등록</button>
	</form>
</body>
</html>