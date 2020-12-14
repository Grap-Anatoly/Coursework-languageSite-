package com.example.coursework.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Author {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "surname")
    private String surname;

    @Column(name = "type")
    private String type;

    @Column(name = "originalLanguage")
    private int originalLanguage;

    @Column(name = "nationality")
    private String nationality;

    public Author(){}

    public Author(String name,String surname, String type, int originalLanguage, String nationality){
        this.name = name;
        this.surname = surname;
        this.type = type;
        this.originalLanguage = originalLanguage;
        this.nationality = nationality;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getOriginalLanguage() {
        return originalLanguage;
    }

    public void setOriginalLanguage(int originalLanguage) {
        this.originalLanguage = originalLanguage;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }
}
