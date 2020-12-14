package com.example.coursework.Servcie;

import com.example.coursework.entity.Languages;
import com.example.coursework.repository.LanguagesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LanguagesServiceImpl implements LanguagesService{
    @Autowired
    private LanguagesRepository languagesRepository;

    @Override
    public void save(Languages languages) {
        languagesRepository.save(languages);
    }

    @Override
    public Languages findByLanguageName(String languageName) {
        return languagesRepository.findByLanguageName(languageName);
    }

    @Override
    public Iterable<Languages> findAll() {
        return languagesRepository.findAll();
    }
}