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
	<div style='height:200px;'>
	<!-- 사이트 이름 -->
		<table>
		<tr>
   			<td>싸이트명</td>
   			<td style = "float : right"><input type ="button" value = "내정보 검색"></td>
   		<td style = "float : right"><input type ="button" value = "검색"></td>
		</tr>
		</table>
	</div>
	<div>
		자유 게시판<input type="button" value="글쓰기" style='float: right;'><br><br>
		<table border='1px' style='height:100px;'>
			<tr>
			<!-- 작성한 제목 -->
	   		 <td colspan="2">게시글 제목</td>
	   		 <td  rowspan="2">사진</td>
			</tr>
			<tr>
			<!-- 로그인한 닉네임, 올린 시간 -->
	 		   <td>닉네임</td>
	 		   <td>올린시간</td>
			</tr>
		</table>
		<table border='1px' style='height:100px;'>
			<tr>
			<!-- 작성한 제목 -->
	   		 <td colspan="2">게시글 제목</td>
	   		 <td  rowspan="2">사진</td>
			</tr>
			<tr>
			<!-- 로그인한 닉네임, 올린 시간 -->
	 		   <td>닉네임</td>
	 		   <td>올린시간</td>
			</tr>
		</table>
		<table border='1px' style='height:100px;'>
			<tr>
			<!-- 작성한 제목 -->
	   		 <td colspan="2">게시글 제목</td>
	   		 <td  rowspan="2">사진</td>
			</tr>
			<tr>
			<!-- 로그인한 닉네임, 올린 시간 -->
	 		   <td>닉네임</td>
	 		   <td>올린시간</td>
			</tr>
		</table>
		<table  border='1px' style='height:100px;'>
			<tr>
			<!-- 작성한 제목 -->
	   		 <td colspan="2">게시글 제목</td>
	   		 <td  rowspan="2">사진</td>
			</tr>
			<tr>
			<!-- 로그인한 닉네임, 올린 시간 -->
	 		   <td>닉네임</td>
	 		   <td>올린시간</td>
			</tr>
		</table>
	</div>
	<br><br><br>
	<table>
		<tr>
			<td><input type="button" value="메인" name="main"></td>
			<td><input type="button" value="조회" name="inquiry"></td>
			<td><input type="button" value="후기" name="review"></td>
			<td><input type="button" value="게시판" name="board"></td>
			<td><input type="button" value="제보" name="report"></td>
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