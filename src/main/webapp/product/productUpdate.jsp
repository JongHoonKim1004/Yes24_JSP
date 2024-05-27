<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 수정</title>
<link href="css/product.css" rel="stylesheet" type="text/css">
<link href="css/reset.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="srcipt/product.js"></script>
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
		<h1>상품 수정 - 관리자 페이지</h1>
		<form method="post" enctype="multipart/form-data" name="frm">
			<input type="hidden" name="code" value="${ product.code }"> <input
				type="hidden" name="nonmakeImg" value="${ product.pictureUrl }">
			<table>
				<tr>
					<td><c:choose>
							<c:when test="${ empty product.pictureUrl }">
								<img alt="" src="upload/noimage.gif" style="width: 220px; height: 300px;">
							</c:when>
							<c:otherwise>
								<img alt="" src="upload/${ product.pictureUrl }"  style="width: 220px; height: 300px;">
							</c:otherwise>
						</c:choose></td>
					<td>
						<table style="float: right;">
							<tr>
								<th style="width: 80px;">상품명</th>
								<td><input type="text" name="name"
									value="${ product.name }" size="80"></td>
							</tr>
							<tr>
								<th>가격</th>
								<td><input type="text" name="price"
									value="${ product.price }"> 원</td>
							</tr>
							<tr>
								<th>사진</th>
								<td><input type="file" name="pictureUrl"><br>
									(주의사항 : 이미지를 변경하고자 할때만 선택하시오.)</td>
							</tr>
							<tr>
								<th>설명</th>
								<td><textarea rows="10" cols="90" name="description">${ product.description }</textarea>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<br> <input type="submit" value="수정"
				onclick="return productCheck()"> <input type="reset"
				value="다시 작성"> <input type="button" value="목록"
				onclick="location.href='productList.do'">
		</form>
	</div>


	<div style="width: 960px; height: 100px; margin: 10px auto;">
		<div style="padding-top: 10px; height: 60px;"></div>
		<div
			style="text-align: center; font-size: 12px; color: #666; padding: 10px 0;">
			<p>Copyright © YES24 Corp. All Rights Reserved.</p>
		</div>
	</div>
</body>
</html>