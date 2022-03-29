<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 게시판</title>
</head>
<body>
<h1>상품 게시판</h1>
<table id="list" width=90%>
	<tr>
		<th>id</th>
		<th>category</th>
		<th>name</th>
		<th>brand</th>
		<th>image</th>
		<th>price</th>
		<th>size</th>
		<th>rating</th>
		<th>review_num</th>
		<th>tag</th>
		<th>reg_date</th>
	</tr>
	
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.id}</td>
			<td>${u.category}</td>
			<td>${u.name}</td>
			<td>${u.brand}</td>
			<td>${u.image}</td>
			<td>${u.price}</td>
			<td>${u.size}</td>
			<td>${u.rating}</td>
			<td>${u.review_num}</td>
			<td>${u.tag}</td>
			<td>${u.reg_date}</td>
		</tr>
	</c:forEach>
	
</table>
<br/>
<a href="upload"> 상품 등록</a>
</body>
</html>