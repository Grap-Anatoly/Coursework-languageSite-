package com.example.coursework.Servcie;

import com.example.coursework.entity.Author;
import com.example.coursework.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthorServiceImpl implements AuthorService {

    @Autowired
    private AuthorRepository authorRepository;

    @Override
    public void save(Author author) {
        authorRepository.save(author);
    }

    @Override
    public Author findByName(String name) {
        return authorRepository.findByName(name);
    }
}
