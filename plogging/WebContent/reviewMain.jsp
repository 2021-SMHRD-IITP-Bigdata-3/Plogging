<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table{
width : 360px;
align : center;
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
<div id="map" style="width:340px;height:340px;" align ='center'></div>
	<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=3bced30872f8da5c8764563d13d480e7"></script>
	<script>
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		    mapOption = {
		        center: new kakao.maps.LatLng(35.1469568,126.9202944), // ������ �߽���ǥ
		        level: 4, // ������ Ȯ�� ����
		        mapTypeId : kakao.maps.MapTypeId.ROADMAP // ��������
		    }; 
////
		// ������ �����Ѵ� 
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		// ������ ��Ŀ�� �����ϰ� ǥ���Ѵ�
		var marker = new kakao.maps.Marker({
		    position: new kakao.maps.LatLng(35.149836, 126.919865), // ��Ŀ�� ��ǥ
		    map: map // ��Ŀ�� ǥ���� ���� ��ü
		});
	</script>
   <div>
   <table border='1px' style='height:100px;'>
   <tr>
     <td>�ı�Խ���</td>
     <td><input type="button" value="�۾���" style='float: right;' onClick="location.href='reviewWrite7.jsp'"></tr>
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