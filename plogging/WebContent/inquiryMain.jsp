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
	<td>����Ʈ��</td>
	<td style = "float : right"><input type ="button" value = "������ �˻�" onClick="location.href='myPage.jsp'"></td>
	<td style = "float : right"><input type ="button" value = "�˻�"></td>
</tr>
</table>
<br><br><br><br><br>
<table>
	
	<tr>
		<div align = "left">���� ��ȸ</div>
	</tr>
	<tr>
		<td>
			<select value ="����">
				<option value = 1>����
				<option value = 2>����
				<option value = 3>����
				<option value = 4>�λ�
			</select>
		</td>
		<td>
			<div><textarea placeholder="��й�ȣ �Է�">
</textarea>
			</div>
		</td>
	</tr>
</table>
<table >
	<tr>������ ����</tr>
	<tr>
		<td>�÷α� ���� :</td>
		<!-- ����!~!! -->
		<td><div style="color: green;">����</div></td>
	</tr>
	<tr >
		<td>���� �ο���</td>
		<!-- �ο��� -->
	</tr>
	<tr>
		<td><input type = "button" value = "��û"></td>
		<!-- �ο��� -->
	</tr>
		<tr>
		<td>�÷α� ���� :</td>
		<!-- ����!~!! -->
		<td><div style="color: green;">����</div></td>
	</tr>
	<tr >
		<td>���� �ο���</td>
		<!-- �ο��� -->
	</tr>
	<tr>
		<td><input type = "button" value = "��û"></td>
		<!-- �ο��� -->
	</tr>
		<tr>
		<td>�÷α� ���� :</td>
		<!-- ����!~!! -->
		<td><div style="color: green;">����</div></td>
	</tr>
	<tr >
		<td>���� �ο���</td>
		<!-- �ο��� -->
	</tr>
	<tr>
		<td><input type = "button" value = "��û"></td>
		<!-- �ο��� -->
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
		<!-- �ο��� -->
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