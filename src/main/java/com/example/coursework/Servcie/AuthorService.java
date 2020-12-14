package com.example.coursework.Servcie;

import com.example.coursework.entity.Author;

public interface AuthorService {

    void save (Author author);

    Author findByName(String name);
}
