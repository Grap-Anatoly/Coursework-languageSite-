package com.example.coursework.repository;

import com.example.coursework.entity.Languages;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LanguagesRepository extends CrudRepository<Languages, Long> {
    Languages findByLanguageName(String languageName);
}