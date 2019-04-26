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
<title>학생정보 조회하기</title>
</head>
<body>
	<h2>수강생등록</h2>
	<form action="./insert.jsp">
		<table>
			<tr>
				<td>이름</td>
				<td>
					<%=student.getStudent_name() %>
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<%=student.getStudent_addr() %>
				</td>
			</tr>
			<tr>
				<td>연락처</td>
				<td>
					<%=student.getStudent_phone() %>
				</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>
					<%=student.getStudent_birth() %>
				</td>
			</tr>
			<tr>
				<td>메일주소</td>
				<td>
					<%=student.getStudent_email() %>
				</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>
					<%=student.getStudent_id() %>
				</td>
			</tr>
		</table>
		<input type="button" value="수정" onclick="window.location.href='./updateForm.jsp?student_no=<%=student.getStudent_no()%>'">
		<input type="button" value="삭제" onclick="window.location.href='./delete.jsp?student_no=<%=student.getStudent_no()%>'">
	</form>
</body>
</html>