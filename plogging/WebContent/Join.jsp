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
				<td>����Ʈ��</td>
				<td style="float: right"><input type="button" value="������ �˻�" onClick="location.href='myPage.jsp'"></td>
				<td style="float: right"><input type="button" value="�˻�"></td>
			</tr>
		</table>
	</div>


				<div>
				<form action="joinServiceCon" method = "post">
					<table align="center">
						<tr>
							<td>
								<p>
									���̵� : <input type="text" name="id" maxlength="20">
								</p>
							</td>
							<td>
							<input type="submit" value="�ߺ�">
							</td>
						</tr>
					</table>
				</div>
				<div>
				
					<table align="center">
					<tr>
					<td>
						<p>
							��й�ȣ : <input type="password" name="pass" maxlength="20">
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
							��й�ȣ Ȯ�� : <input type="password" name="passcheck" maxlength="20">
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
							�̸� : <input type="text" name="name" maxlength="20">
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
							�ڵ��� ��ȣ : <input type="text" name="tel" maxlength="20">
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
							���� : <input type="text" name="age" maxlength="20">
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
							�ּ� : <input type="text" name="address" maxlength="20">
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
							�÷α� ���� : <label><input type="checkbox" name="exp"
								value="��"> ��</label> <label><input type="checkbox"
								name="exp" value="��"> ��</label>
						</p>
						</td>
					</tr>
					</table>
					
				</div>

				<div class="btn_area" align="center">
					<p>
						<input type="submit" value="�����ϱ�">
				</div>
				</form>
		

	<div>
		<table align="center">
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
	</div>
		</div>
		</div>
	</div>
</body>
</html>