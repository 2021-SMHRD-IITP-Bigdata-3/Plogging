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
	   <td>����Ʈ��</td>
	   <td style = "float : right"><input type ="button" value = "������ �˻�"></td>
	   <td style = "float : right"><input type ="button" value = "�˻�"></td>
	</tr>
	</table>
	<form action = "" method = "post">
		<table border = "1px" >
			<tr>
				<td colspan = "4">
					�Խñ� ����
				</td>
			</tr>
			<tr>
				<td colspan = "2"> ��¥ �� �ð� </td>
				<td> ��ȸ�� </td>
				<td> �г��� </td>
			</tr>
			<tr> <td colspan = "4" height = "300">�Խ� ���� </td></tr>
				<td colspan = "2"></td>
				<td> <input type = "submit" value = "����"> </td>
				<td> <input type = "submit" value = "����"> </td>
			</tr>			
		</table>
		<table  border = "1px">
		<tr>
		   <td colspan = "4"> ��� </td>
		</tr>
		<tr>
		   <td colspan = "4"> �г��� </td>
		</tr>		
		<tr>
		   <td colspan = "4"> ��۳��� </td>
		</tr>
		<tr>
		   <td colspan = "4"> ��۽ð� </td>
		</tr>
		<tr>
		   <td colspan = "4"><input type="text"  placeholder = "��� ����"></td>
		</tr>
		<tr>
		   <td colspan = "2"> prev</td>
		   <td colspan = "2"> next</td>
		</tr>
		</table>
		<table>
		<tr>
		   <td><input type="button" value="����"></td>
		   <td><input type="button" value="��ȸ"></td>
		   <td><input type="button" value="�ı�"></td>
		   <td><input type="button" value="�Խ���"></td>
		   <td><input type="button" value="����"></td>
		</tr>
		</table>
	</form>
</div>

</body>
</html>