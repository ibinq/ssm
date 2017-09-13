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
    private int uid;//问题提出者
    private Integer follow;//关注
    private Integer look;//浏览数
    private Date askTime;//提问时间

//    private List<String> tags;//问题所在标签
//    private Integer status;//1.正常 2.匿名
//    private List<String> answers;//回答列表
//    private List<String> descImg;//问题追加图片


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

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
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
