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
   <td>����Ʈ��</td>
   <td style = "float : right"><input type ="button" value = "������ �˻�"></td>
   <td style = "float : right"><input type ="button" value = "�˻�"></td>
</tr>
</table>
<div>
<table border='1px' style='height:100px;'>
<tr>
<td>����</td>
</tr>
</table>

</div>
   <div>
   <table border='1px' style='height:100px;'>
   <tr>
     <td>�ı�Խ���</td>
     <td><input type="button" value="�۾���" style='float: right;'></tr>
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