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
boardDTO info = (boardDTO) session.getAttribute("info");
notic_BoardDTO info1 = (notic_BoardDTO) session.getAttribute("info1");
reviewBoardDTO info2 = (reviewBoardDTO) session.getAttribute("info2");
%>
<table>
<tr>
	<td>����Ʈ��</td>
	<td style = "float : right"><input type ="button" value = "������ �˻�" onClick="location.href='myPage.jsp'"></td>
	<td style = "float : right"><input type ="button" value = "�˻�"></td>
</tr>
</table>

<br><br><br><br><br>

<table >
	<tr>������ ����</tr>
	<tr>
		<td>�÷α� ���� :<%if(info !=null){ %><span><%=info.getBoardDate() %> </span><%}else{%><span>�Խñ��� �����ϴ�.</span><%} %></td>
		<!-- ����!~!! -->
		<td><div>����<%if(info1 !=null){ %><span><%=info1.getNoticeImage() %></span></span><%}else{%><span>������ �����ϴ�.</span><%} %></td></div></td>
	</tr>
	<tr >
		<td>���� �ο���<%if(info1 !=null){ %><span><%=info1.getNoticeMember() %></span></span><%}else{%><span>����� �����ϴ�.</span><%} %></td>
		<!-- �ο��� -->
	</tr>
	<tr>
		<td><input type = "button" value = "��û"></td>
		<!-- �ο��� -->
	</tr>
		<tr>
		<td>�÷α� ���� :<%if(info !=null){ %><span><%=info.getBoardDate() %></span><%}else{%><span>�Խñ��� �����ϴ�.</span><%} %></td>
		<!-- ����!~!! -->
		<td><div>����<%if(info1 !=null){ %><span><%=info1.getNoticeImage() %></span></span><%}else{%><span>������ �����ϴ�.</span><%} %></td></div></td>
	</tr>
	<tr >
		<td>���� �ο���<%if(info1 !=null){ %><span><%=info1.getNoticeMember() %></span></span><%}else{%><span>����� �����ϴ�.</span><%} %></td>
		<!-- �ο��� -->
	</tr>
	<tr>
		<td><input type = "button" value = "��û"></td>
		<!-- �ο��� -->
	</tr>
		<tr>
		<td>�÷α� ���� :<%if(info !=null){ %><span><%=info.getBoardDate() %></span></span><%}else{%><span>�Խñ��� �����ϴ�.</span><%} %></td>
		<!-- ����!~!! -->
		<td><div>����<%if(info1 !=null){ %><span><%=info1.getNoticeImage() %></span></span><%}else{%><span>������ �����ϴ�.</span><%} %></td></div></td>
	</tr>
	<tr >
		<td>���� �ο���<%if(info1 !=null){ %><span><%=info1.getNoticeMember() %></span></span><%}else{%><span>����� �����ϴ�.</span><%} %></td>
		<!-- �ο��� -->
	</tr>
	<tr>
		<td><input type = "button" value = "��û"></td>
		<!-- �ο��� -->
	</tr>
</table>
<table>
<tr>
	<td>�ı�</td>
</tr>	
<tr>
	<td>- <%if(info2 !=null){ %><span><%=info2.getReviewTitle() %></span></span><%}else{%><span>�ı�Խñ��� �����ϴ�.</span><%} %></td>
</tr>
<tr>
	<td>- <%if(info2 !=null){ %><span><%=info2.getReviewTitle() %></span></span><%}else{%><span>�ı�Խñ��� �����ϴ�.</span><%} %></td>
</tr>
<tr>
	<td>- <%if(info2 !=null){ %><span><%=info2.getReviewTitle() %></span></span><%}else{%><span>�ı�Խñ��� �����ϴ�.</span><%} %></td>
</tr>

</table>
<br><br><br><br>
<table>
<tr>
	<td><input type="button" value="����" name="main" onClick="location.href='Main.jsp'"></td>
	<td><input type="button" value="��ȸ" name="inquiry" onClick="location.href='inquiryMain.jsp'"></td>
	<td><input type="button" value="�ı�" name="review" onClick="location.href='reviewMain.jsp'"></td>
	<td><input type="button" value="�Խ���" name="board" onClick="location.href='Board.jsp'"></td>
	<td><input type="button" value="����" name="report" onClick="location.href='reportPostWrite.jsp'"></td>
</tr>
<tr>
	<td>����</td>
	<td>��ȸ</td>
	<td>�ı�</td>
	<td>�Խ���</td>
	<td>����</td>
</tr>
</table>
</body>
</html>