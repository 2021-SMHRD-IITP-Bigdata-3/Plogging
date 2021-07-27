<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table{
align : center;
}
</style>
</head>
<body>
<table>
<tr>
   <td>싸이트명</td>
   <td style = "float : right"><input type ="button" value = "내정보 검색"></td>
   <td style = "float : right"><input type ="button" value = "검색"></td>
</tr>
</table>
<div>
<table border='1px' style='height:100px;'>
<tr>
<td>지도</td>
</tr>
</table>

</div>
   <div>
   <table border='1px' style='height:100px;'>
   <tr>
     <td>후기게시판</td>
     <td><input type="button" value="글쓰기" style='float: right;'></tr>
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