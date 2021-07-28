<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>



</style>
</head>
<body>
	<div>
		<table align="center">
			<tr>
				<td>싸이트명</td>
				<td style="float: right"><input type="button" value="내정보 검색" onClick="location.href='myPage.jsp'"></td>
				<td style="float: right"><input type="button" value="검색"></td>
			</tr>
		</table>
	</div>


				<div>
				<form action="joinServiceCon" method = "post">
					<table align="center">
						<tr>
							<td>
								<p>
									아이디 : <input type="text" name="id" maxlength="20">
								</p>
							</td>
							<td>
							<input type="submit" value="중복">
							</td>
						</tr>
					</table>
				</div>
				<div>
				
					<table align="center">
					<tr>
					<td>
						<p>
							비밀번호 : <input type="password" name="pass" maxlength="20">
						</p>
						</td>
					</tr>
					</table>
				</div>

				<div>
					<table align="center">
					<tr>
					<td>
						<p>
							비밀번호 확인 : <input type="password" name="passcheck" maxlength="20">
						</p>
						</td>
						</tr>
					</table>
				</div>
				<div>
					<table align="center">
					<tr>
					<td>
						<p>
							이름 : <input type="text" name="name" maxlength="20">
						</p>
						</td>
					</tr>
					</table>
				</div>
				<div>
					<table align="center">
					<tr>
					<td>
						<p>
							핸드폰 번호 : <input type="text" name="tel" maxlength="20">
						</p>
						</td>
					</tr>
					</table>
				</div>
				<div>
					<table align="center">
					<tr>
					<td>
						<p>
							나이 : <input type="text" name="age" maxlength="20">
						</p>
						</td>
					</tr>
					</table>
				</div>
				<div>
					<table align="center">
					<tr>
					<td>
						<p>
							주소 : <input type="text" name="address" maxlength="20">
						</p>
						</td>
					</tr>
					</table>
				</div>
				<div>
					<table align="center">
					<tr>
					<td>
						<p>
							플로깅 여부 : <label><input type="checkbox" name="exp"
								value="유"> 유</label> <label><input type="checkbox"
								name="exp" value="무"> 무</label>
						</p>
						</td>
					</tr>
					</table>
					
				</div>

				<div class="btn_area" align="center">
					<p>
						<input type="submit" value="가입하기">
				</div>
				</form>
		

	<div>
		<table align="center">
			<tr>
	<td><input type="button" value="메인" name="main" onClick="location.href='Main.jsp'"></td>
	<td><input type="button" value="조회" name="inquiry" onClick="location.href='inquiryMain.jsp'"></td>
	<td><input type="button" value="후기" name="review" onClick="location.href='reviewMain.jsp'"></td>
	<td><input type="button" value="게시판" name="board" onClick="location.href='Board.jsp'"></td>
	<td><input type="button" value="제보" name="report" onClick="location.href='reportPostWrite.jsp'"></td>
			</tr>
			<tr>
				<td>메인</td>
				<td>조회</td>
				<td>후기</td>
				<td>게시판</td>
				<td>제보</td>
			</tr>
		</table>
	</div>
		</div>
		</div>
	</div>
</body>
</html>