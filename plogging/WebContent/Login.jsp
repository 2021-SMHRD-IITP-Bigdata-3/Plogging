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
	<td>����Ʈ��</td>
	<td style = "float : right"><input type ="button" value = "������ �˻�" onClick="location.href='myPage.jsp'"></td>
	<td style = "float : right"><input type ="button" value = "�˻�"></td>
</tr>
</table>
<br><br><br><br><br>
<form action="loginServiceCon" method = "post">
<table>
<tr>
	<td>
		<div align ="center">
			<textarea placeholder="���̵� �Է�" name="id" style = 'float:center'></textarea><br>
		</div>
	</td>
</tr>
<tr>
	<td>
		<div align ="center">
			<textarea placeholder="��й�ȣ �Է�" name="pw"></textarea>
		</div>
	</td>

</tr>
</table>
<div align = "center"><input type = "submit" value = "�α���"></div>
<div align="right"><input type = "button" value = "���̵�ã�� / ��й�ȣ ����"></div>
</form>
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