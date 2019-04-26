<%@page import="www.bacoder.kr.control.HrdController"%>
<%@page import="www.bacoder.kr.vo.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String studentNoStr = request.getParameter("student_no");
int studentNo = Integer.parseInt(studentNoStr);

Student param = new Student();
param.setStudent_no(studentNo);

HrdController controller = new HrdController();
Student student = controller.select(param);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보 수정하기</title>
</head>
<body>
	<h2>수강생등록</h2>
	<form action="./update.jsp">
		<table>
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="name" placeholder="이름을입력하세요" value="<%=student.getStudent_name()%>"/>
			</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>
				<input type="text" name="addr" placeholder="주소를 입력하세요" value="<%=student.getStudent_addr()%>"/>
			</td>
		</tr>
		<tr>
			<td>연락처</td>
			<td>
				<input type="text" name="phone" placeholder="연락처를 입력하세요" value="<%=student.getStudent_phone()%>"/>
			</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td>
				<input type="text" name="birth" placeholder="생년월일을 입력하세요" value="<%=student.getStudent_birth()%>" disabled/>
			</td>
		</tr>
		<tr>
			<td>메일주소</td>
			<td>
				<input type="text" name="email" placeholder="메일주소를 입력하세요" value="<%=student.getStudent_email()%>"/>
			</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td>
				<%=student.getStudent_id()%>
			</td>
		</tr>
		
		</table>
		<input type="hidden" name="student_no" value="<%=student.getStudent_no() %>"/>
		<input type="submit" value="저장">
	</form>
</body>
</html>