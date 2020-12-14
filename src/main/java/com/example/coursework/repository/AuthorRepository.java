package com.example.coursework.repository;

import com.example.coursework.entity.Author;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthorRepository extends CrudRepository<Author, Long>{
    Author findByName(String name);
}
