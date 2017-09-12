<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<%--jquery--%>
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
<!-- 最新版本的 Bootstrap -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<style>
    div{
      /* border: 1px solid black;*/
    }

</style>
<body style="background-color: #F3F3F3">
<div class="row" style="height: 55px;background-color: white;box-shadow:1px 1px 1px #DDDFE0">
    <div class="col-md-3">
    </div>
    <div class="col-md-6">
        <div class="row" style="margin-top: 5px ;" >
            <div class="col-md-1">
                <img src="../../img/logo.png" style="cursor: pointer;">
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <a style="text-decoration: none;cursor: pointer;"><span style="font-family: 'Adobe Caslon Pro';font-size: 16px;">首页</span></a>
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <a style="text-decoration: none;cursor: pointer;"><span style="font-family: 'Adobe Caslon Pro';font-size: 16px;">发现</span></a>
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <a style="text-decoration: none;cursor: pointer;"><span style="font-family: 'Adobe Caslon Pro';font-size: 16px;">话题</span></a>
            </div>
            <div class="col-md-3" style="margin-top: 10px">
                <input type="text"  style="height: 30px;width: 230px" id="exampleInputName2" placeholder="搜索你感兴趣的内容...">
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <button class="btn btn-primary" style="background-color: #0F88EB">提问</button>
            </div>
            <div class="col-md-1" style="margin-top: 7px">
                <img src="../../img/message.png" >
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <img src="../../img/duihua.png" >
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <span >登录</span>
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <span >注册</span>
            </div>

        </div>

    </div>
    <div class="col-md-3">
    </div>
</div>
<div class="row" style="margin-top: 10px;">
    <div class="col-md-3"></div>
    <div class="col-md-4">
        <div class="row" style="height: 70px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-2" style="margin-top: 15px">
                        <img src="../../img/ask.png" style="cursor: pointer;">
                    </div>
                    <div class="col-md-2" style="margin-top: 12px">
                        <img src="../../img/anser.png"style="cursor: pointer;" >
                    </div>
                    <div class="col-md-2" style="margin-top: 12px">
                        <img src="../../img/article.png" style="cursor: pointer;">
                    </div>
                    <div class="col-md-4">

                    </div>
                    <div class="col-md-2"style="margin-top: 22px;padding-left: 50px">
                        <a><span style="font-family: 'Adobe Garamond Pro' ;font-size: 16px;cursor: pointer;">草稿</span></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" style="height: 280px;margin-top: 10px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
            <div class="col-md-12">
                <div class="row" >
                    <div class="col-md-12">
                        <span>来自话题：电影</span>
                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-12">

                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-12">

                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-12">

                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-12">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-2" style="margin-left: 10px;">
        <div class="row" style="height: 175px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
            <div class="col-md-12"></div>
        </div>
        <div class="row" style="height: 300px;margin-top: 10px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
            <div class="col-md-12"></div>
        </div>
    </div>
    <div class="col-md-3"></div>
</div>
</body>
</html>
