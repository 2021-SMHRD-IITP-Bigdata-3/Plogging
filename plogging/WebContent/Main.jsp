<%@page import="Model.notic_BoardDAO"%>
<%@page import="Model.reviewBoardDAO"%>
<%@page import="Model.boardDAO"%>
<%@page import="Model.reviewBoardDTO"%>
<%@page import="Model.notic_BoardDTO"%>
<%@page import="Model.boardDTO"%>
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
</style>
</head>
<body>
<%
boardDAO dao = new boardDAO();
boardDTO dto = dao.showOne(4);

reviewBoardDAO dao1 = new reviewBoardDAO();
reviewBoardDTO dto1 = dao1.showOne(1);

notic_BoardDAO dao2 = new notic_BoardDAO();
notic_BoardDTO dto2 = dao2.showOne(1);

notic_BoardDTO info1 = (notic_BoardDTO) session.getAttribute("info1");
reviewBoardDTO info2 = (reviewBoardDTO) session.getAttribute("info2");
//
%>
<table>
<tr>
   <td>싸이트명</td>
   <td style = "float : right"><input type ="button" value = "내정보 검색" onClick="location.href='myPage.jsp'"></td>
   <td style = "float : right"><input type ="button" value = "검색"></td>
</tr>
</table>

<br><br><br><br><br>
//
<table >
   <tr>맞춤형 공고</tr>
   <tr>
      <td>플로깅 기한 :<%if(dao.showOne(1) !=null){ %><span><%=dto.getBoardDate() %> </span><%}else{%><span>게시글이 없습니다.</span><%} %></td>
      <!-- 기한!~!! -->
      <td><div>사진<%if(dao2.showOne(1) !=null){ %><span><%=dto.getBoardImage() %></span></span><%}else{%><span>사진이 없습니다.</span><%} %></td></div></td>
   </tr>
   <tr >
      <td>제한 인원수<%if(dao2.showOne(1) !=null){ %><span><%=dto2.getLimitedNumber() %></span></span><%}else{%><span>사람이 없습니다.</span><%} %></td>
      <!-- 인원수 -->
   </tr>
   <tr>
      <td><input type = "button" value = "신청"></td>
      <!-- 인원수 -->
   </tr>
      <tr>
      <td>플로깅 기한 :<%if(dao.showOne(2) !=null){ %><span><%=dto.getBoardDate() %> </span><%}else{%><span>게시글이 없습니다.</span><%} %></td>
      <!-- 기한!~!! -->
      <td><div>사진<%if(dao2.showOne(2) !=null){ %><span><%=dto.getBoardImage() %></span></span><%}else{%><span>사진이 없습니다.</span><%} %></td></div></td>
   </tr>
   <tr >
      <td>제한 인원수<%if(dao2.showOne(2) !=null){ %><span><%=dto2.getLimitedNumber() %></span></span><%}else{%><span>사람이 없습니다.</span><%} %></td>
      <!-- 인원수 -->
   </tr>
   <tr>
      <td><input type = "button" value = "신청"></td>
      <!-- 인원수 -->
   </tr>
      <tr>
      <td>플로깅 기한 :<%if(dao.showOne(3) !=null){ %><span><%=dto.getBoardDate() %> </span><%}else{%><span>게시글이 없습니다.</span><%} %></td>
      <!-- 기한!~!! -->
      <td><div>사진<%if(dao2.showOne(3) !=null){ %><span><%=dto.getBoardImage() %></span></span><%}else{%><span>사진이 없습니다.</span><%} %></td></div></td>
   </tr>
   <tr >
      <td>제한 인원수<%if(dao2.showOne(3) !=null){ %><span><%=dto2.getLimitedNumber() %></span></span><%}else{%><span>사람이 없습니다.</span><%} %></td>
      <!-- 인원수 -->
   </tr>
   <tr>
      <td><input type = "button" value = "신청"></td>
      <!-- 인원수 -->
   </tr>
</table>
<table>
<tr>
   <td>후기</td>
</tr>   
<tr>
   <td>- <%if(dao1.showOne(1) !=null){ %><span><%=dto1.getReviewTitle() %></span></span><%}else{%><span>후기게시글이 없습니다.</span><%} %></td>
</tr>
<tr>
   <td>- <%if(dao1.showOne(2) !=null){ %><span><%=dto1.getReviewTitle() %></span></span><%}else{%><span>후기게시글이 없습니다.</span><%} %></td>
</tr>
<tr>
   <td>- <%if(dao1.showOne(3) !=null){ %><span><%=dto1.getReviewTitle() %></span></span><%}else{%><span>후기게시글이 없습니다.</span><%} %></td>
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