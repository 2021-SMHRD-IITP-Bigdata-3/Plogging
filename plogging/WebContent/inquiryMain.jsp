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
	tr , td{
    border: 1px solid #444444;
    padding: 10px;
	}
	textarea {
    width: 200px;
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
<table>
	
	<tr>
		<div align = "left">공고 조회</div>
	</tr>
	<tr>
		<td>
			<select value ="지역">
				<option value = 1>광주
				<option value = 2>서울
				<option value = 3>경주
				<option value = 4>부산
			</select>
		</td>
		<td>
			<div><textarea placeholder="비밀번호 입력">
</textarea>
			</div>
		</td>
	</tr>
</table>
<table >
	<tr>맞춤형 공고</tr>
	<tr>
		<td>플로깅 기한 :</td>
		<!-- 기한!~!! -->
		<td><div style="color: green;">사진</div></td>
	</tr>
	<tr >
		<td>제한 인원수</td>
		<!-- 인원수 -->
	</tr>
	<tr>
		<td><input type = "button" value = "신청"></td>
		<!-- 인원수 -->
	</tr>
		<tr>
		<td>플로깅 기한 :</td>
		<!-- 기한!~!! -->
		<td><div style="color: green;">사진</div></td>
	</tr>
	<tr >
		<td>제한 인원수</td>
		<!-- 인원수 -->
	</tr>
	<tr>
		<td><input type = "button" value = "신청"></td>
		<!-- 인원수 -->
	</tr>
		<tr>
		<td>플로깅 기한 :</td>
		<!-- 기한!~!! -->
		<td><div style="color: green;">사진</div></td>
	</tr>
	<tr >
		<td>제한 인원수</td>
		<!-- 인원수 -->
	</tr>
	<tr>
		<td><input type = "button" value = "신청"></td>
		<!-- 인원수 -->
	</tr>
</table>
<br><br>
<table>
	<tr>
		<td><input type = "button" value = "<<"></td>
		<td><input type = "button" value = "1"></td>
		<td><input type = "button" value = "2"></td>
		<td><input type = "button" value = "3"></td>
		<td><input type = "button" value = "4"></td>
		<td><input type = "button" value = "5"></td>
		<td><input type = "button" value = ">>"></td>
		<!-- 인원수 -->
	</tr>
</table>
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