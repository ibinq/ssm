<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<%--jquery--%>
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
<!-- 最新版本的 Bootstrap -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="../../../rs/js/wangEditor.js"></script>
<style>
 /*   div{
        border: 1px solid red;
    }*/
    *{
        margin: 0;
        padding: 0;
    }
</style>
<body style="background-color: #F3F3F3;overflow:-Scroll;overflow-x:hidden">
<%@include file="../public/header.jsp"%>
<div class="row" style="margin-top: 0px; z-index: 1">
    <div class="col-md-3"></div>
    <div class="col-md-4" style="margin-top: 65px;z-index: 1">
        <div class="row" style="height: 70px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-2" style="margin-top: 15px">
                        <img src="../../../img/ask.png" style="cursor: pointer;">
                    </div>
                    <div class="col-md-2" style="margin-top: 12px">
                        <img src="../../../img/anser.png" style="cursor: pointer;" >
                    </div>
                    <div class="col-md-2" style="margin-top: 12px">
                        <img src="../../../img/article.png" style="cursor: pointer;">
                    </div>
                    <div class="col-md-4">

                    </div>
                    <div class="col-md-2"style="margin-top: 22px;padding-left: 50px">
                        <a><span style="font-family: 'Adobe Garamond Pro' ;font-size: 16px;cursor: pointer;">草稿</span></a>
                    </div>
                </div>
            </div>
        </div>
        <c:forEach items="${questions}" var="question">
            <div class="row" style="height: 280px;margin-top: 10px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
            <div class="col-md-12">
                <div class="row" >
                    <div class="col-md-12">
                        <span>来自话题：电影</span>
                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-12">
                        <a  href="/question/findQuestion?id=${question.id}" style="cursor: pointer"><span>${question.title}</span></a>
                    </div>
                </div>
               <%-- <div class="row" >
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
                </div>--%>
            </div>
        </div>
        </c:forEach>
    </div>
    <div class="col-md-2" style="margin-left: 60%;margin-top: 65px; position: fixed;">
        <div class="row" style="height: 175px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
            <div class="col-md-12"></div>
        </div>
        <div class="row" style="height: 300px;margin-top: 10px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
            <div class="col-md-12"></div>
        </div>
    </div>
    <div class="col-md-3"></div>
</div>

<%--提问时的弹出框--%>
<div class="modal fade" id="questionmodal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content"  style="height: 400px;width: 800px">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">写下你的问题</h4>
            </div>
            <div class="modal-body">
                <div>
                    <input type="text" id="questionTitle" class="form-control" placeholder="问题标题">
                </div>
                <div id="editor" style="margin-top: 5px ;width: 400px;height: 300px;">
                    <p class="questionContent">问题背景、条件等详细信息</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" onclick="havaQuestion()" class="btn btn-primary">提交问题</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<%--登录时的弹出框--%>
<div class="modal fade" id="login" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">写下你的问题</h4>
            </div>
            <div class="modal-body">
                <input type="text" id="questionTitle" class="form-control" placeholder="问题标题">
            </div>
            <div class="modal-footer">

                <button type="button" onclick="havaQuestion()" class="btn btn-primary">提交问题</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
<script>
    $(function () {
        /*富文本*/
        var E = window.wangEditor
        var editor = new E('#editor')
        // 下面两个配置，使用其中一个即可显示“上传图片”的tab。但是两者不要同时使用！！！
        editor.customConfig.uploadImgShowBase64 = true   // 使用 base64 保存图片
//         editor.customConfig.uploadImgServer = '/upload'  // 上传图片到服务器

        editor.create()

    });


    function havaQuestion() {
        var questionTitle = $("#questionTitle").val();
        var questionContent = $(".questionContent").html();
        alert(questionContent)
        location.href="/question/addQuestion?questionTitle="+questionTitle+"&questionContent="+questionContent;
    }
</script>
</html>
