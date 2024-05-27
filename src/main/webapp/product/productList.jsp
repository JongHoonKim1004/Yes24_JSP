<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 관리</title>

<link href="css/product.css" rel="stylesheet" type="text/css">
<link href="css/reset.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div id="adminHeader">
		<div class="adminHeadLogo">
			<a href="index.jsp" target="_self"><img alt="logo"
				src="img/logoN4.svg"></a>
		</div>
		<div class="adminHeadMid">${loginUser.name } 관리자 님, 어서오세요</div>
		<div class="adminHeadMenu">
			<a href="index.jsp">메인 페이지로</a> <a href="admin.jsp">관리자 페이지로</a>
		</div>
	</div>

	<div id="productList" align="center">
		<h1>상품 리스트</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right;"><a
					href="productWrite.do">상품 등록</a></td>
			</tr>
			<tr>
				<th style="width: 50px; line-height: 36px;">번호</th>
				<th style="line-height: 36px;">이름</th>
				<th style="width: 100px; line-height: 36px;">가격</th>
				<th style="width: 100px; line-height: 36px;">수정</th>
				<th style="width: 100px; line-height: 36px;">삭제</th>
			</tr>
			<c:forEach var="product" items="${ productList }">
				<tr class="record">
					<td>${ product.code }</td>
					<td>${ product.name }</td>
					<td>${ product.price }원</td>
					<td><a href="productUpdate.do?code=${product.code }">상품 수정</a></td>
					<td><a href="productDelete.do?code=${product.code }">상품 삭제</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<div style="width: 960px; height: 100px; margin: 10px auto;">
		<div style="padding-top: 10px; height: 60px;">
			
		</div>
		<div
			style="text-align: center; font-size: 12px; color: #666; padding: 10px 0;">
			<p>Copyright © YES24 Corp. All Rights Reserved.</p>
		</div>
	</div>
</body>
</html>