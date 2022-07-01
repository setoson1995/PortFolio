package com.example.popol.model;

public class AgreementDto {
    private long id;
    private long categoryId;    // 카테고리 분류정보
    private long articleId;     // 게시글 정보
    private String userId;      // 표현유저 아이디
    private short type;         // 1은 좋음, 2는 나쁨으로 구분해서 표현

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

    public long getArticleId() {
        return articleId;
    }

    public void setArticleId(long articleId) {
        this.articleId = articleId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public short getType() {
        return type;
    }

    public void setType(short type) {
        this.type = type;
    }
}
