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
	<td style = "float : right"><input type ="button" value = "������ �˻�"></td>
	<td style = "float : right"><input type ="button" value = "�˻�"></td>
</tr>
</table>
<br><br><br><br><br>
<table>
<tr>
	<td>
		<div align ="center">
			<textarea placeholder="���̵� �Է�" style = 'float:center'></textarea><br>
		</div>
	</td>
</tr>
<tr>
	<td>
		<div align ="center">
			<textarea placeholder="��й�ȣ �Է�"></textarea>
		</div>
	</td>

</tr>
</table>
<div align = "center"><input type = "submit" value = "�α���"></div>
<div align="right"><input type = "button" value = "���̵�ã�� / ��й�ȣ ����"></div>
<br><br><br><br>
<table>
<tr>
			<td><input type="button" value="����" name="main"></td>
			<td><input type="button" value="��ȸ" name="inquiry"></td>
			<td><input type="button" value="�ı�" name="review"></td>
			<td><input type="button" value="�Խ���" name="board"></td>
			<td><input type="button" value="����" name="report"></td>
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