package www.bacoder.kr.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class Student {
	private int student_no;
	private String student_name;
	private String student_addr;
	private String student_phone;
	private String student_birth;
	private String student_email;
	private String student_id;
	private String student_pwd;
	
	public Student() {
		
	}

	public int getStudent_no() {
		return student_no;
	}

	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getStudent_addr() {
		return student_addr;
	}

	public void setStudent_addr(String student_addr) {
		this.student_addr = student_addr;
	}

	public String getStudent_phone() {
		return student_phone;
	}

	public void setStudent_phone(String student_phone) {
		this.student_phone = student_phone;
	}

	public String getStudent_birth() {
		return student_birth;
	}

	public void setStudent_birth(String student_birth) {
		this.student_birth = student_birth;
	}

	public String getStudent_email() {
		return student_email;
	}

	public void setStudent_email(String student_email) {
		this.student_email = student_email;
	}

	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getStudent_pwd() {
		return student_pwd;
	}

	public void setStudent_pwd(String student_pwd) {
		this.student_pwd = student_pwd;
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
	}
}
