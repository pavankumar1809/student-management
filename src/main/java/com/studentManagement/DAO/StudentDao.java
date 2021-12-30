package com.studentManagement.DAO;

import java.util.List;

import com.studentManagement.api.Student;

public interface StudentDao {

	void updateStudent(Student student);

	void saveStudent(Student student);

	List<Student> loadStudents();

	Student getStudent(int id);

	void deleteStudent(int id);

}
