package com.example.popol.model;

import java.sql.Date;
public class BoardDto {
    //1	News
    //2	Living Life
    //3	Celebrity
    //4	Funny
    private long id;
    private long categoryId; // categoryDto에 있는 ID랑 연결. 둘다 long이나 short로 변경해야함(sql에도)
    private String title;
    private String writer;
    private String content;
//    private long view;          // 조회수
    private Date createTime;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(long categoryId) {
        this.categoryId = categoryId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

//    public long getView() {
//        return view;
//    }
//
//    public void setView(long view) {
//        this.view = view;
//    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
