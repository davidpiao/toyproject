<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/list_style.css">
<title>상품 게시판</title>
<script>
   function deleteok(id){
      var a = confirm("정말로 삭제하겠습니까?");
      if(a){
         location.href='deleteok/' + id;
      }
   }
</script>
</head>
<body>
	<div id="header">
		<jsp:include page="/WEB-INF/views/navbar.jsp" />
	</div>
	<div class="area">
		<p class="notice">스탠다드</p>
		<p class="notice">테라스샵</p>
	</div>
	<div class="lists">
		<div class="sort">
			<div class="category">
				<input type="radio" class="dropbtn" name="sort" id="category"
					 checked="checked" /><label for="category">품목</label>
			</div>
			<div class="brand">
				<input type="radio" class="dropbtn" name="sort" id="brand" /><label for="brand">브랜드</label>
			</div>
		</div>
		<div class="product-list">
			<c:forEach items="${list}" var="u">
				<ul>
					<li class="product-box"><div class="product-detail">
							<p class="product-brand">${u.brand}</p>
							<p class="product-name">${u.name}</p>
							<p class="product-price">${u.price}</p>
							<p class="product-info">${u.rating}</p>
							<p class="product-info">${u.review_num}</p>
							<a href="detail/${u.getId()}">제품 상세보기</a>
							<a href="editform/${u.getId()}">제품 정보 수정하기</a>
							<a href="javascript:deleteok('${u.getId()}')">제품 삭제하기</a>
							
						</div></li>
				</ul>
			</c:forEach>
		</div>
	</div>
	<a href="upload"> 상품 등록</a>
</body>
</html>