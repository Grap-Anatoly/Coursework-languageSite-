package com.example.coursework.controller;

import com.example.coursework.Servcie.LanguagesService;
import com.example.coursework.entity.Languages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/lang/")
public class LanguagesController {

    @Autowired
    private LanguagesService languagesService;

    @GetMapping("addLanguage")
    public String addLanguagePage(Model model) {
        model.addAttribute("languagesForm", new Languages());

        return "addLanguage";
    }

    @PostMapping("addLanguage")
    public String addLanguageForm(@ModelAttribute("languagesForm") Languages languagesForm) {

        languagesService.save(languagesForm);

        return "add";
    }

//    @GetMapping("languagesList")
//    public String list(ModelMap modelMap) {
//        modelMap.put("languagesList", languagesService.findAll());
//        return "startPage";
//    }
}
