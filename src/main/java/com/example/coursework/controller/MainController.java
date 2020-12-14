package com.example.coursework.controller;

import com.example.coursework.Servcie.LanguagesService;
import com.example.coursework.entity.Course;
import com.example.coursework.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/languages/")
public class MainController {

    @Autowired
    private LanguagesService languagesService;

    private final CourseRepository courseRepository;

    @Autowired
    private MainController(CourseRepository courseRepository){
        this.courseRepository = courseRepository;
    }

    @GetMapping("frontPage")
    public String mainPage() {
        return "index";
    }

    @GetMapping("logIn")
    public String logIn() {
        return "logIn";
    }

    @GetMapping("signUp")
    public String signUp() {
        return "signUp";
    }

    @GetMapping("infoPage")
    public String infoPage() {
        return "infoPage";
    }

    @GetMapping("add")
    public String addPage(Course course) {
        return "add";
    }

    @GetMapping("addCourse")
    public String addCoursePage(Course course) {
        return "addCourse";
    }

    @GetMapping("startPage")
    public String list(ModelMap modelMap) {
        modelMap.put("languagesList", languagesService.findAll());
        return "startPage";
    }

    @GetMapping("delete")
    public String addDeletepage(Course course) {
        return "delete";
    }

}
