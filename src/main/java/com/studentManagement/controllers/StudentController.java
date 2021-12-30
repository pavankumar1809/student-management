package com.studentManagement.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.studentManagement.DAO.StudentDao;
import com.studentManagement.api.Student;

@Controller
public class StudentController {
	
	@Autowired
	StudentDao studentDao;
	
	@RequestMapping(value="/showStudent", method = RequestMethod.GET)
	public String showStudentList(Model model) {
		
		List<Student> studentList = studentDao.loadStudents();
		model.addAttribute("students",studentList);
		return "student-list";
	}
	
	@RequestMapping(value="/addStudent", method = RequestMethod.GET)
	public String addStudent(Model model) {
		
		Student student = new Student();
		model.addAttribute("student", student);
		
		return "add-student";
	}
	
	
	@RequestMapping(value="/save-student", method = RequestMethod.POST)
	public String saveStudent(Student student) {
		
		System.out.println(student);
		studentDao.saveStudent(student);
		
		return "redirect:/showStudent";
	}
	
	@RequestMapping(value="/update-student", method = RequestMethod.POST)
	public String alterStudent(Student student) {
		
		System.out.println(student);
		studentDao.updateStudent(student);
		
		return "redirect:/showStudent";
	}
	
	@GetMapping("/updateStudent")
	public String updateStudent(@RequestParam("userId") int id, Model model) {
		
		Student student = studentDao.getStudent(id);
		model.addAttribute("student", student);
		System.out.println(student);
		
		return "update-student";
	}
	
	@RequestMapping(value="/more-info", method = RequestMethod.GET)
	public String moreInfo(@RequestParam("userId") int id, Model model) {
		
		Student student = studentDao.getStudent(id);
		model.addAttribute("student", student);
		
		return "student-info";
	}
	
	@RequestMapping(value="/deleteStudent", method = RequestMethod.GET)
	public String deleteStudent(@RequestParam("userId") int id) {
		
		studentDao.deleteStudent(id);
		
		return "redirect:/showStudent";
	}
	
	
}
