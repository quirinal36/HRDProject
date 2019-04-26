<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보 입력하기</title>
</head>
<body>
	<h2>수강생등록</h2>
	<form action="./insert.jsp">
		<table>
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="name" placeholder="이름을입력하세요"/>
			</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>
				<input type="text" name="addr" placeholder="주소를 입력하세요"/>
			</td>
		</tr>
		<tr>
			<td>연락처</td>
			<td>
				<input type="text" name="phone" placeholder="연락처를 입력하세요"/>
			</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td>
				<input type="text" name="birth" placeholder="생년월일을 입력하세요"/>
			</td>
		</tr>
		<tr>
			<td>메일주소</td>
			<td>
				<input type="text" name="email" placeholder="메일주소를 입력하세요"/>
			</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td>
				<input type="text" name="id" placeholder="아이디를 입력하세요" required/>
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="password" name="pwd" required/>
			</td>
		</tr>
		</table>
		<input type="submit" value="등록">
	</form>
</body>
</html>