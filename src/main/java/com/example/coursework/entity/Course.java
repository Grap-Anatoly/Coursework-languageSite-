package com.example.coursework.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Course {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "type")
    private String type;

    @Column(name = "difficulty")
    private int difficulty;

    @Column(name = "author")
    private String author;

    @Column(name = "translatedLanguage")
    private int translatedLanguage;

    @Column(name = "originalFilePath")
    private String originalFilePath;

    @Column(name = "translatedFilePath")
    private String translatedFilePath;

    @Column(name = "tipsFilePath")
    private String tipsFilePath;

    public Course(){}

    public Course(String name,String type,int difficulty,String author, int translatedLanguage, String originalFilePath, String translatedFilePath, String tipsFilePath){
        this.name = name;
        this.type = type;
        this.difficulty = difficulty;
        this.author = author;
        this.translatedLanguage = translatedLanguage;
        this.originalFilePath = originalFilePath;
        this.translatedFilePath = translatedFilePath;
        this.tipsFilePath = tipsFilePath;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(int difficulty) {
        this.difficulty = difficulty;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getTranslatedLanguage() {
        return translatedLanguage;
    }

    public void setTranslatedLanguage(int translatedLanguage) {
        this.translatedLanguage = translatedLanguage;
    }

    public String getOriginalFilePath() {
        return originalFilePath;
    }

    public void setOriginalFilePath(String originalFilePath) {
        this.originalFilePath = originalFilePath;
    }

    public String getTranslatedFilePath() {
        return translatedFilePath;
    }

    public void setTranslatedFilePath(String translatedFilePath) {
        this.translatedFilePath = translatedFilePath;
    }

    public String getTipsFilePath() {
        return tipsFilePath;
    }

    public void setTipsFilePath(String tipsFilePath) {
        this.tipsFilePath = tipsFilePath;
    }
}
