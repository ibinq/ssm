package com.ibinq.question.entity;

import com.ibinq.user.entity.User;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/8/31.
 */
public class Answer {
    private int id;
    private String content;//问题追加描述
    private Integer thinks;//回答列表
    private Date answerTime;//回答时间
    private int qid;//问题的id
    private int uid;//回答的id
    private Integer agree;//

/*    private List<String> answers;//回答列表
    private List<String> descImg;//问题追加图片*/

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getThinks() {
        return thinks;
    }

    public void setThinks(Integer thinks) {
        this.thinks = thinks;
    }

    public Date getAnswerTime() {
        return answerTime;
    }

    public void setAnswerTime(Date answerTime) {
        this.answerTime = answerTime;
    }

    public int getQiu() {
        return qid;
    }

    public void setQiu(int qid) {
        this.qid = qid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public Integer getAgree() {
        return agree;
    }

    public void setAgree(Integer agree) {
        this.agree = agree;
    }
}

