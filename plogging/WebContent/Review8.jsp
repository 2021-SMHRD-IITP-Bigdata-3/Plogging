<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	table {
		width : 360px;
	}
</style>
</head>
<body>
<div>
	<table>
	<tr>
	   <td>싸이트명</td>
	   <td style = "float : right"><input type ="button" value = "내정보 검색"></td>
	   <td style = "float : right"><input type ="button" value = "검색"></td>
	</tr>
	</table>
	<form action = "" method = "post">
		<table border = "1px" >
			<tr>
				<td colspan = "4">
					게시글 제목
				</td>
			</tr>
			<tr>
				<td> 날짜 및 시간 </td>
				<td> 조회수 </td>
				<td> 닉네임 </td>
				<td> 장소 </td>
			</tr>
			<tr> <td colspan = "4" height = "300">게시 내용 </td></tr>
			<tr> <td colspan = "1"> 쓰레기 양 </td><td colspan = "3"> 20L </td></tr>
			<tr> <td colspan = "1"> 플로깅 거리 </td><td colspan = "3"> 2km </td></tr>
			<tr>
				<td colspan = "4"> 지도	</td>
			</tr>
			<tr>
				<td colspan = "2"></td>
				<td> <input type = "submit" value = "수정"> </td>
				<td> <input type = "submit" value = "삭제"> </td>
			</tr>			
		</table>
				<table  border = "1px">
		<tr>
		   <td colspan = "4"> 댓글 </td>
		</tr>
		<tr>
		   <td colspan = "4"> 닉네임 </td>
		</tr>		
		<tr>
		   <td colspan = "4"> 댓글내용 </td>
		</tr>
		<tr>
		   <td colspan = "4"> 댓글시간 </td>
		</tr>
		<tr>
		   <td colspan = "4"><input type="text"  placeholder = "댓글 쓰기"></td>
		</tr>
		<tr>
		   <td colspan = "2"> prev</td>
		   <td colspan = "2"> next</td>
		</tr>
		</table>
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
	</form>
</div>

</body>
</html>