package com.studentManagement.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.studentManagement.api.Student;
import com.studentManagement.rowmapper.StudentRowMapper;

@Repository
public class StudentDaoImpl implements StudentDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public void updateStudent(Student student) {
		Object[] parameters = { student.getName(), student.getMobile(), student.getCountry(), student.getEmail(),
				student.getCollege(), student.getDegree(), student.getBranch(), student.getMinor(),
				student.getMinorMarks(), student.getEng(), student.getMath(), student.getId() };
		String sql = "update students set name=?, mobile=?, country=?, email=?, college=?, degree=?, branch=?, minor=?, minorMarks=?, eng=?, math=? where id=?";
		jdbcTemplate.update(sql, parameters);
	}

	@Override
	public void saveStudent(Student student) {
		Object[] parameters = { student.getName(), student.getMobile(), student.getCountry(), student.getEmail(),
				student.getCollege(), student.getDegree(), student.getBranch(), student.getMinor(),
				student.getMinorMarks(), student.getEng(), student.getMath() };
		String sql = "insert into students(name, mobile, country, email, college, degree, branch, minor, minorMarks, eng, math) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, parameters);
	}

	@Override
	public List<Student> loadStudents() {

		String sql = "select * from students";
		StudentRowMapper rowMapper = new StudentRowMapper();
		List<Student> studentList = jdbcTemplate.query(sql, rowMapper);
		return studentList;
	}

	@Override
	public Student getStudent(int id) {
		System.out.println(id);
		String sql = "select * from students where id=?";
		Student student = jdbcTemplate.queryForObject(sql, new StudentRowMapper(), id);
		return student;
	}

	@Override
	public void deleteStudent(int id) {
		String sql = "delete from students where id=?";
		jdbcTemplate.update(sql, id);
	}

}
