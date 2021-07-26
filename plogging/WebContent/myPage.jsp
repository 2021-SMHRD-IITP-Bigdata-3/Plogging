<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table{
	width:360px
}
div{
	width:360px
}
</style>
</head>
<body>
	<div style='height:50px;'>
	<!-- 사이트 이름 -->
		<table >
		<tr>
   			<td>싸이트명</td>
   			<td style = "float : right"><input type ="button" value = "내정보 검색"></td>
   			<td style = "float : right"><input type ="button" value = "검색"></td>
		</tr>
		</table>
	</div>
	<div style='height:100px;'>
		<table>
		<tr>
			<td>메인 디자인</td>
		</tr>
		</table>
	</div>
	<div style='height:100px;'>
		<table>
		<tr>
			<td>지도</td>
		</tr>
		</table>
	</div>
	<div>
		<table border='1px' style='height:50px;'>
		<tr>
			<td>플로깅 횟수</td>
			<td>?번</td>
			<!-- 했던 플로깅 횟수 -->
		</tr>
		</table>
	</div>
	<br><br>
	<div >
		<table border='1px'>
		<th align="left" style='height:30px;'>내가 쓴 글</th>
		<tr>
			<td>내가 쓴 글1</td>
		</tr>
		<tr>
			<td>내가 쓴 글2</td>
		</tr>
		<tr>
			<td>내가 쓴 글3</td>
		</tr>
		</table>
	</div>	
	<div style='height:100px;'>
		<table>
			<input  type="button" value="회원정보수정">
		</table>
	</div>
	<table>
		<tr>
   			<td><input type="button" value="메인"></td>
   			<td><input type="button" value="조회"></td>
   			<td><input type="button" value="후기"></td>
		   <td><input type="button" value="게시판"></td>
		   <td><input type="button" value="제보"></td>
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