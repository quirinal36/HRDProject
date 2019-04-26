<%@page import="java.util.List"%>
<%@page import="www.bacoder.kr.control.HrdController"%>
<%@page import="www.bacoder.kr.vo.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
HrdController controller = new HrdController();
List<Student> list = controller.selectAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생목록</title>
</head>
<body>
	<h2>수강생목록</h2>
	<input type="button" value="수강신청" onclick="window.location.href='./insertForm.jsp'"/>
	<table>
	<colgroup>
		<col width="15%"/>
		<col width="35%"/>
		<col width="50%"/>
	</colgroup>
	<thead>
		<tr>
			<th>NO</th>
			<th>NAME</th>
			<th>PHONE</th>
		</tr>
	</thead>
	<tbody>
		<%for(int i=0; i<list.size(); i++){
			Student item = list.get(i);
			%>
			<tr>
				<td><%=item.getStudent_no() %></td>
				<td>
					<a href="./detail.jsp?student_no=<%=item.getStudent_no() %>">
					<%=item.getStudent_name() %>
					</a>
				</td>
				<td><%=item.getStudent_phone() %></td>
			</tr>
		<%}%>
	</tbody>
	</table>
</body>
</html>