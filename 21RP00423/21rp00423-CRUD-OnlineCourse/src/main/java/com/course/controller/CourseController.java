package com.course.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.course.model.Course;
import com.course.repository.Courserepository;

@Controller
public class CourseController {

	@Autowired
	private Courserepository cRepo;
	
	@GetMapping({"/showCourses","/","/list"})
	
	public ModelAndView showCourses() {
		
		ModelAndView mode = new ModelAndView("list-courses");
		List<Course> list = cRepo.findAll();
		
		mode.addObject("Courses",list);
		
		return mode;
		
	}
	

	@GetMapping("/addCourseForm")
	public ModelAndView addCourseForm() {
		
		ModelAndView mode = new ModelAndView("add-course-form");
		Course newCourse = new Course();
		mode.addObject("course", newCourse);
		
		return mode;
		
	}
	
	@PostMapping("/saveCourse")
	public String saveCourse(@ModelAttribute Course course) {
		
		cRepo.save(course);
		
		return "redirect:/list";
		
	}
	@GetMapping("/showUpdateForm")
	public ModelAndView showUpdateForm(@RequestParam long courseId) {
		ModelAndView mode = new ModelAndView("add-course-form");
		Course course = cRepo.findById(courseId).get();
		mode.addObject("course", course);
		return mode;
		
	}
	
	@GetMapping("/deleteCourse")
	public String deleteEmploye(@RequestParam long courseId) {
		
		cRepo.deleteById(courseId);
		
		return "redirect:/list";
		
	}
}
