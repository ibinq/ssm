package com.ibinq.user.entity;

import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/8/31.
 */
@Component
public class User {
    private int id;
    //个人信息
    private String username;
    private String password;
    private String realname;
    private String nickname;
    private Integer sex;
    private String work;//工作
    private String personalInfo;//个人简介
    private String phone;//电话
    private String email;//邮箱
    private String headImg;//头像
    private String province;//所在省
    private String city;//所在市
    private String area;//所在区
    private Date birthday;//生日
    private String backgroundImg;//个人主页背景图
    private Integer browsed ;        //主页被浏览
    private Integer agrees;//赞同数
    private Integer thinks;//感谢数
/*    private List<Integer> follows ;  //关注
    private List<Integer> follower ; //被关注
    private List<Integer> topics ;   //关注的话题
    private List<Integer> columns ;  //关注的专栏
    private List<Integer> questions ;//关注的问题
    private List<Integer> favorites ;// 收藏夹


    private List<Integer> self_question ;//提出的问题
    private List<Integer> self_answes ;//回答的问题
    private List<Integer> self_article ;//发表的文章*/


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }

    public String getPersonalInfo() {
        return personalInfo;
    }

    public void setPersonalInfo(String personalInfo) {
        this.personalInfo = personalInfo;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getBackgroundImg() {
        return backgroundImg;
    }

    public void setBackgroundImg(String backgroundImg) {
        this.backgroundImg = backgroundImg;
    }

    public Integer getBrowsed() {
        return browsed;
    }

    public void setBrowsed(Integer browsed) {
        this.browsed = browsed;
    }

    public Integer getAgrees() {
        return agrees;
    }

    public void setAgrees(Integer agrees) {
        this.agrees = agrees;
    }

    public Integer getThinks() {
        return thinks;
    }

    public void setThinks(Integer thinks) {
        this.thinks = thinks;
    }
}
