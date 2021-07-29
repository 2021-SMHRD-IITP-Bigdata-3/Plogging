<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	#main{
		width: 500px;
		height: 800px;
		background-color: yellow;
	}
</style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div id="main">
	
	
	
	</div>
	<input type="text" placeholder="아이디 입력" name="id">
	<input type="text" placeholder="내용 입력" name="content">
	<button id="send">입력</button>
	
	
	<script type="text/javascript">
		$("#send").on('click',function(){
			  $.ajax({
			       url: "ChatInsert", //컨트롤러 URL
			       dataType: 'json',
			       type: 'POST',
			       success: function (res) {
			        // alert("success");
			       },error: function (xhr) {
			         //alert(xhr.responseText);
			       } 
			    });
		});
	</script>
</body>
</html>