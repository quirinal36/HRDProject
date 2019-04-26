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

HrdController controller = new HrdController();

Student student = new Student();
student.setStudent_name(name);
student.setStudent_birth(birth);
student.setStudent_addr(addr);
student.setStudent_phone(phone);
student.setStudent_email(email);
student.setStudent_id(id);
student.setStudent_pwd(pwd);

int result = controller.insert(student);
// out.print("result: " + result);
if(result > 0){
	out.print("입력 성공");
}else{
	out.print("입력 실패");
}
%>
<br/>
<a href="./list.jsp">리스트로 이동</a>