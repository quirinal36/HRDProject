package www.bacoder.kr.control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import www.bacoder.kr.db.DBconn;
import www.bacoder.kr.vo.Student;

public class HrdController implements Controller<Student>{
	Logger logger = Logger.getLogger(HrdController.class.getSimpleName());
	
	@Override
	public List<Student> selectAll() {
		List<Student> result = new ArrayList<Student>();

		try(Connection conn = new DBconn().getConnection()){
			StringBuilder sql = new StringBuilder();
			sql.append("select * from STUDENT_TBL_01 where STUDENT_NO > 0 order by STUDENT_NO DESC");

			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			logger.info("query: "+ sql.toString());
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Student student = new Student();
				student.setStudent_no(rs.getInt("STUDENT_NO"));
				student.setStudent_name(rs.getString("STUDENT_NAME"));
				student.setStudent_addr(rs.getString("STUDENT_ADDR"));
				student.setStudent_birth(rs.getString("STUDENT_BIRTH"));
				student.setStudent_email(rs.getString("STUDENT_EMAIL"));
				student.setStudent_id(rs.getString("STUDENT_ID"));
				student.setStudent_pwd(rs.getString("STUDENT_PW"));
				student.setStudent_phone(rs.getString("STUDENT_PHONE"));

				result.add(student);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(NullPointerException e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public int insert(Student student) {
		int result = 0;
		try(Connection conn = new DBconn().getConnection()){
			StringBuilder sql = new StringBuilder();
			sql.append("insert into STUDENT_TBL_01 ")
			.append("(STUDENT_NO, STUDENT_NAME, STUDENT_ADDR, ")
			.append("STUDENT_PHONE, STUDENT_BIRTH, STUDENT_EMAIL,")
			.append("STUDENT_ID, STUDENT_PW) ")
			.append("values")
			.append("((select nvl(max(STUDENT_NO),0)+1 from STUDENT_TBL_01),?,?,?,?,?,?,?)");
			int i = 1;
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			//			pstmt.setInt(i++, student.getStudent_no());
			pstmt.setString(i++, student.getStudent_name());
			pstmt.setString(i++, student.getStudent_addr());
			pstmt.setString(i++, student.getStudent_phone());
			pstmt.setString(i++, student.getStudent_birth());
			pstmt.setString(i++, student.getStudent_email());
			pstmt.setString(i++, student.getStudent_id());
			pstmt.setString(i++, student.getStudent_pwd());
			
			logger.info("query: "+ sql.toString());
			logger.info(student.toString());
			
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Student select(Student input) {
		Student student = null;
		try(Connection conn = new DBconn().getConnection()){
			StringBuilder sql = new StringBuilder();
			sql.append("select * from STUDENT_TBL_01 where STUDENT_NO = ?");

			int i = 1;
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(i++, input.getStudent_no());
			
			logger.info("query: "+sql.toString());
			logger.info(input.toString());
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				student = new Student();
				student.setStudent_no(rs.getInt("STUDENT_NO"));
				student.setStudent_name(rs.getString("STUDENT_NAME"));
				student.setStudent_addr(rs.getString("STUDENT_ADDR"));
				student.setStudent_birth(rs.getString("STUDENT_BIRTH"));
				student.setStudent_email(rs.getString("STUDENT_EMAIL"));
				student.setStudent_id(rs.getString("STUDENT_ID"));
				student.setStudent_pwd(rs.getString("STUDENT_PW"));
				student.setStudent_phone(rs.getString("STUDENT_PHONE"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return student;
	}

	@Override
	public int update(Student input) {
		int result = 0;

		try(Connection conn = new DBconn().getConnection()){
			StringBuilder sql = new StringBuilder();
			sql.append("UPDATE STUDENT_TBL_01 ")
			.append("SET ")
			.append("STUDENT_NAME=?,")
			.append("STUDENT_ADDR=?,")
			.append("STUDENT_EMAIL=?,")
			.append("STUDENT_PHONE=?").append(" ")
			.append("WHERE STUDENT_NO=?");
			int i = 1;
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(i++, input.getStudent_name());
			pstmt.setString(i++, input.getStudent_addr());
			pstmt.setString(i++, input.getStudent_email());
			pstmt.setString(i++, input.getStudent_phone());
			pstmt.setInt(i++, input.getStudent_no());
			
			logger.info("query: "+sql.toString());
			logger.info(input.toString());
			
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	@Override
	public int delete(Student input) {
		int result = 0;
		try(Connection conn = new DBconn().getConnection()){
			StringBuilder sql = new StringBuilder();
			sql.append("DELETE FROM STUDENT_TBL_01 WHERE STUDENT_NO=?");
			int i = 1;
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(i++, input.getStudent_no());

			logger.info("query: "+sql.toString());
			logger.info(input.toString());
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
