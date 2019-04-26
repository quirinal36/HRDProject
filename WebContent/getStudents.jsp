<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.Iterator"%>
<%@page import="www.bacoder.kr.vo.Student"%>
<%@page import="java.util.List"%>
<%@page import="www.bacoder.kr.control.HrdController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
HrdController controller = new HrdController();
List<Student> list = controller.selectAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<table border="1">
<tr>
	<td>번호</td>
	<td>이름</td>
	<td>연락처</td>
	<td>아이디</td>
	<td>메일주소</td>
	<td>생년월일</td>
	<td>주소</td>
</tr>
<%
for(int i=0; i<list.size(); i++){
	Student item = list.get(i);
%>
<tr>
	<td><%=item.getStudent_no() %></td>
	<td><%=item.getStudent_name() %></td>
	<td><%=item.getStudent_phone() %></td>
	<td><%=item.getStudent_id() %></td>
	<td><%=item.getStudent_email() %></td>
	<td><%=item.getStudent_birth() %></td>
	<td><%=item.getStudent_addr() %></td>
</tr>
<%
}
%>
</table>
</body>
</html>