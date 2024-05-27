<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link href="css/product.css" rel="stylesheet" type="text/css">
<link href="css/reset.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script/product.js"></script>
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
		<h1 style="margin-bottom:30px;">상품 등록</h1>
		<form method="post" enctype="multipart/form-data" name="frm">
			<table>
				<tr>
					<th>상품명</th>
					<td><input type="text" name="name" size="80"></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><input type="text" name="price"> 원</td>
				</tr>
				<tr>
					<th>사진</th>
					<td><input type="file" name="pictureUrl"><br>
						(주의사항 : 이미지를 변경하고자 할때만 선택하시오)</td>
				</tr>
				<tr>
					<th>설명</th>
					<td><textarea rows="10" cols="80" name="description"></textarea></td>
				</tr>
			</table>
			<br> <input type="submit" value="등록"
				onclick="return productCheck()"> <input type="reset"
				value="다시 작성"> <input type="button" value="목록으로"
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