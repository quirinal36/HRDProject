<%@page import="java.sql.Date"%>
<%@page import="www.bacoder.kr.vo.Student"%>
<%@page import="www.bacoder.kr.control.HrdController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String addr = request.getParameter("addr");
String phone = request.getParameter("phone");
String birth = request.getParameter("birth");
String email = request.getParameter("email");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String studentNoStr = request.getParameter("student_no");

HrdController controller = new HrdController();

Student student = new Student();
student.setStudent_name(name);
student.setStudent_birth(birth);
student.setStudent_addr(addr);
student.setStudent_phone(phone);
student.setStudent_email(email);
try{
	student.setStudent_no(Integer.parseInt(studentNoStr));
}catch(NumberFormatException e){
	e.printStackTrace();
}
int result = controller.update(student);
if(result > 0){
	out.print("수정 성공");
}else{
	out.print("수정 실패");
}
%>
<br/>
<a href="./list.jsp">리스트로 이동</a>