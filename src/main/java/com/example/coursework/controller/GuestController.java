package com.example.coursework.controller;

import com.example.coursework.Servcie.LanguagesService;
import com.example.coursework.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/guest/")
public class GuestController {
    @Autowired
    private LanguagesService languagesService;

    private final CourseRepository courseRepository;

    @Autowired
    private GuestController(CourseRepository courseRepository){
        this.courseRepository = courseRepository;
    }

    @GetMapping("welcome")
    public String welcome() {
        return "guestWelcome";
    }

    @GetMapping("logIn")
    public String logIn() {
        return "login";
    }

    @GetMapping("infoPage")
    public String infoPage() {
        return "guestInfoPage";
    }

    @GetMapping("startPage")
    public String list(ModelMap modelMap) {
        modelMap.put("languagesList", languagesService.findAll());
        return "guestStartPage";
    }

    @GetMapping("selectCourse")
    public String selectingCourseRedirect() {
        return "guestCoursesList";
    }

    @GetMapping("selectedCourse")
    public String courseRedirect() {
        return "guestCourse";
    }

    @GetMapping("selectAuthor")
    public String selectingAuthorRedirect() {
        return "guestAuthor";
    }
}
