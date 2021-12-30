package com.studentManagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentManagement.api.Student;

public class StudentRowMapper implements RowMapper<Student> {

	@Override
	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		Student student = new Student();
		student.setId(rs.getInt("id"));
		student.setName(rs.getString("name"));
		student.setMobile(rs.getLong("mobile"));
		student.setCountry(rs.getString("country"));
		student.setEmail(rs.getString("email"));
		student.setCollege(rs.getString("college"));
		student.setDegree(rs.getString("degree"));
		student.setBranch(rs.getString("branch"));
		student.setMinor(rs.getString("minor"));
		student.setMinorMarks(rs.getString("minorMarks"));
		student.setEng(rs.getString("eng"));
		student.setMath(rs.getString("math"));
		return student;
	}

}
