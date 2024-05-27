<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/boardlist.css">
<link type="text/css" rel="stylesheet" href="css/reset.css">
<script type="text/javascript" src="js/board.js"></script>
</head>
<body>
<div align="center">
	<h1 style="font-size: 30px; line-height: 100px; font-weight: 600;">비밀번호 확인</h1>
	<form action="BoardServlet" name="frm" method="get">
		<input type="hidden" name="command" value="board_check_pass">
		<input type="hidden" name="num" value="${param.num }">
		<table style="width: 80%;">
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" name="pass" size="20">
				</td>
			</tr>
		</table>
		<br>
		<input type="submit" value="확 인" onclick="return passCheck()">
		<br><br>${message }
	</form>
</div>
</body>
</html>