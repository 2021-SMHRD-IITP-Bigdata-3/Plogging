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
	   <td style = "float : right"><input type ="button" value = "������ �˻�" onClick="location.href='myPage.jsp'"></td>
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
		<table  border='1px'>
			<tr>
				<td align="center"><input type="submit" value="�����ϱ� �Ϸ�" ></td>
			</tr>		
		</table>
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
	</form>
</div>

</body>
</html>