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
	<!-- ����Ʈ �̸� -->
		<table>
		<tr>
   			<td>����Ʈ��</td>
   			<td style = "float : right"><input type ="button" value = "������ �˻�"></td>
   		<td style = "float : right"><input type ="button" value = "�˻�"></td>
		</tr>
		</table>
	</div>
	<div>
		���� �Խ���<input type="button" value="�۾���" style='float: right;'><br><br>
		<table border='1px' style='height:100px;'>
			<tr>
			<!-- �ۼ��� ���� -->
	   		 <td colspan="2">�Խñ� ����</td>
	   		 <td  rowspan="2">����</td>
			</tr>
			<tr>
			<!-- �α����� �г���, �ø� �ð� -->
	 		   <td>�г���</td>
	 		   <td>�ø��ð�</td>
			</tr>
		</table>
		<table border='1px' style='height:100px;'>
			<tr>
			<!-- �ۼ��� ���� -->
	   		 <td colspan="2">�Խñ� ����</td>
	   		 <td  rowspan="2">����</td>
			</tr>
			<tr>
			<!-- �α����� �г���, �ø� �ð� -->
	 		   <td>�г���</td>
	 		   <td>�ø��ð�</td>
			</tr>
		</table>
		<table border='1px' style='height:100px;'>
			<tr>
			<!-- �ۼ��� ���� -->
	   		 <td colspan="2">�Խñ� ����</td>
	   		 <td  rowspan="2">����</td>
			</tr>
			<tr>
			<!-- �α����� �г���, �ø� �ð� -->
	 		   <td>�г���</td>
	 		   <td>�ø��ð�</td>
			</tr>
		</table>
		<table  border='1px' style='height:100px;'>
			<tr>
			<!-- �ۼ��� ���� -->
	   		 <td colspan="2">�Խñ� ����</td>
	   		 <td  rowspan="2">����</td>
			</tr>
			<tr>
			<!-- �α����� �г���, �ø� �ð� -->
	 		   <td>�г���</td>
	 		   <td>�ø��ð�</td>
			</tr>
		</table>
	</div>
	<br><br><br>
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