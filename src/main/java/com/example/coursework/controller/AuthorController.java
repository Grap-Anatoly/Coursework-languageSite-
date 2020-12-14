package com.example.coursework.controller;

import com.example.coursework.Servcie.AuthorService;
import com.example.coursework.entity.Author;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auth/")
public class AuthorController {

    @Autowired
    private AuthorService authorService;

    @GetMapping("addAuthor")
    public String addAuthorPage(Model model) {
        model.addAttribute("authorForm", new Author());

        return "addAuthor";
    }

    @PostMapping("addAuthor")
    public String addAuthorForm(@ModelAttribute("authorForm") Author authorForm) {

        authorService.save(authorForm);

        return "add";
    }

    @GetMapping("selectAuthor")
    public String selectingAuthorRedirect() {
        return "author";
    }

    @GetMapping("delete")
    public String deleteRedirect() {
        return "deleteAuth";
    }
}
