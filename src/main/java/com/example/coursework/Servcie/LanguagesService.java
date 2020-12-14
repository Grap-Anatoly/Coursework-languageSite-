package com.example.coursework.Servcie;

import com.example.coursework.entity.Languages;

public interface LanguagesService {

    void save(Languages languages);

    Languages findByLanguageName(String languageName);

    public Iterable<Languages> findAll();

}