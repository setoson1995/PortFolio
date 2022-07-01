package com.example.popol.model;

public class CategoryDto {
    /*
    카테고리 순번
    News
    Living Life
    Celebrity
    Funny
    */
    private long id; // boardDto에 있는 카테고리랑 연결
    private String name;

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
}
