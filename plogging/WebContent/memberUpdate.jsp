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
		<table>
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
	<div >
		<table border='1px'>
		<tr>
			<td>아이디</td>
			<td>로그인한아이디</td>
			<!-- 로그인한 아이디 -->
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type='password' placeholder="비밀번호 입력" style="width: 100px; margin: 0 auto;"></td>
		</tr>
		<tr>
			<td>수정할 비밀번호</td>
			<td><input type='text' placeholder="비밀번호 확인" style="width: 100px; margin: 0 auto;"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type='text' placeholder="이름 입력" style="width: 100px; margin: 0 auto;"></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input type='text' placeholder="나이 입력" style="width: 100px; margin: 0 auto;"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type='text' placeholder="주소 입력" style="width: 100px; margin: 0 auto;"></td>
		</tr>
		<tr>
			<td>플로깅 경험 여부</td>
			<td><input type='text' placeholder="플로깅 경험 입력" style="width: 100px; margin: 0 auto;"></td>
		</tr>
		<tr>
			<td colspan='2' align="center"><input type="submit" value="회원 정보 수정" ><td>
		</tr>
		</table>
	</div>
<br><br><br>
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