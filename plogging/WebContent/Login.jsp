<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	table{
    width: 360px;
    border: 1px solid #444444;
	   	}
	div{
	
	width: 360px;
	}
	textarea {
    width: 250px;
    height: 25px;
    }
</style>
</head>
<body>
<table>
<tr>
	<td>싸이트명</td>
	<td style = "float : right"><input type ="button" value = "내정보 검색" onClick="location.href='myPage.jsp'"></td>
	<td style = "float : right"><input type ="button" value = "검색"></td>
</tr>
</table>
<br><br><br><br><br>
<form action="loginServiceCon" method = "post">
<table>
<tr>
	<td>
		<div align ="center">
			<textarea placeholder="아이디 입력" name="id" style = 'float:center'></textarea><br>
		</div>
	</td>
</tr>
<tr>
	<td>
		<div align ="center">
			<textarea placeholder="비밀번호 입력" name="pw"></textarea>
		</div>
	</td>

</tr>
</table>
<div align = "center"><input type = "submit" value = "로그인"></div>
<div align="right"><input type = "button" value = "아이디찾기 / 비밀번호 착기"></div>
</form>
<br><br><br><br>
<table>
<tr>
	<td><input type="button" value="메인" name="main" onClick="location.href='Main.jsp'"></td>
	<td><input type="button" value="조회" name="inquiry" onClick="location.href='inquiryMain.jsp'"></td>
	<td><input type="button" value="후기" name="review" onClick="location.href='reviewMain.jsp'"></td>
	<td><input type="button" value="게시판" name="board" onClick="location.href='Board.jsp'"></td>
	<td><input type="button" value="제보" name="report" onClick="location.href='reportPostWrite.jsp'"></td>
</tr>
<tr>
	<td>메인</td>
	<td>조회</td>
	<td>후기</td>
	<td>게시판</td>
	<td>제보</td>
</tr>
</table>
</body>
</html>