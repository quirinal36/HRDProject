<%@page import="java.sql.Date"%>
<%@page import="www.bacoder.kr.vo.Student"%>
<%@page import="www.bacoder.kr.control.HrdController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String studentNoStr = request.getParameter("student_no");

HrdController controller = new HrdController();

Student student = new Student();
try{
	student.setStudent_no(Integer.parseInt(studentNoStr));
}catch(NumberFormatException e){
	e.printStackTrace();
}
int result = controller.delete(student);
if(result > 0){
	out.print("삭제 성공");
}else{
	out.print("삭제 실패");
}
%>
<br/>
<a href="./list.jsp">리스트로 이동</a>