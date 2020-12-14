package com.example.coursework.controller;

import com.example.coursework.Servcie.CourseService;
import com.example.coursework.entity.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/course/")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @GetMapping("addCourse")
    public String addCoursePage(Model model) {
        model.addAttribute("courseForm", new Course());

        return "addCourse";
    }

    @PostMapping("addCourse")
    public String addCourseForm(@ModelAttribute("courseForm") Course courseForm) {

        courseService.save(courseForm);

        return "add";
    }

    @GetMapping("selectCourse")
    public String selectingCourseRedirect() {
        return "coursesList";
    }

    @GetMapping("selectedCourse")
    public String courseRedirect() {
        return "course";
    }

    @GetMapping("delete")
    public String deleteRedirect() {
        return "deleteCse";
    }
}
