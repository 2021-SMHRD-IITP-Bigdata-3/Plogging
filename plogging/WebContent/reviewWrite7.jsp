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
   textarea {
	   width: 360px;
	   height: 300px;
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
					<input type = "text" placeholder = "������ �Է��ϼ���." name ="title" >
				</td>
			</tr>
			<tr>
				<td colspan = "3">
					���ε� <input type = "file">
				</td>
				<td>
					 ��ġ ���� <!-- ��ġ�����ִ��±װ˻��ؼ� �߰� --></td>
				</td>
			</tr>
			<tr>
				<td colspan = "4">
					<textarea></textarea>	
				</td>
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
		<tr>
		   <td>����</td>
		   <td>��ȸ</td>
		   <td>�ı�</td>
		   <td>�Խ���</td>
		   <td>����</td>
		</tr>
		</table>
	</form>
</div>

</body>
</html>