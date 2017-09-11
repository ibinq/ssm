package com.ibinq.question.entity;

import com.ibinq.user.entity.User;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/8/31.
 */
public class Question {
    private int id;
    private String title;//问题
    private String content;//问题追加描述
    private List<String> descImg;//问题追加图片

    private List<String> tags;//问题所在标签
    private User user;//问题提出者
    private Integer status;//1.正常 2.匿名
    private List<String> answers;//回答列表

    private Integer follow;//关注
    private Integer look;//浏览数
    private Date askTime;//提问时间

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<String> getDescImg() {
        return descImg;
    }

    public void setDescImg(List<String> descImg) {
        this.descImg = descImg;
    }

    public List<String> getTags() {
        return tags;
    }

    public void setTags(List<String> tags) {
        this.tags = tags;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public List<String> getAnswers() {
        return answers;
    }

    public void setAnswers(List<String> answers) {
        this.answers = answers;
    }

    public Integer getFollow() {
        return follow;
    }

    public void setFollow(Integer follow) {
        this.follow = follow;
    }

    public Integer getLook() {
        return look;
    }

    public void setLook(Integer look) {
        this.look = look;
    }

    public Date getAskTime() {
        return askTime;
    }

    public void setAskTime(Date askTime) {
        this.askTime = askTime;
    }
}
