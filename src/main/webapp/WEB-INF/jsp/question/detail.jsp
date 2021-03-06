<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<%--jquery--%>
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
<!-- 最新版本的 Bootstrap -->
<%--<link rel="stylesheet" href="../../../rs/css/wangEditor.css">--%>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="../../../rs/js/wangEditor.js"></script>
<style>
    *{
        margin: 0;
        padding: 0;
    }
</style>
<body style="background-color: #F3F3F3;overflow-y:scroll;overflow-x:hidden">
<%@include file="../public/header.jsp"%>
<div>
<div class="row" style="height: 205px;width:100%;background-color: white;box-shadow:1px 1px 1px #DDDFE0;position: fixed;margin-top: 55px">
    <div class="col-md-3">
    </div>
    <div class="col-md-6">
        <div class="row" style="margin-top: 5px ;" >
            <span>这是标签</span>
            关注者${question.follow}    浏览者${question.look}

        </div>
        <div class="row" style="margin-top: 5px ;" >
            <span>${question.title}</span>

        </div>
        <div class="row" style="margin-top: 5px ;" >
            <span>其他</span>
            <button onclick="followQuestion('${question.id}')">关注问题</button>
            <button onclick="haveAnswer()">写回答</button>
        </div>

    </div>
    <div class="col-md-3" >


    </div>
</div>
<div class="row" style="width:100%;position: fixed;margin-top: 270px">
    <div class="col-md-3">
    </div>
    <div class="col-md-4" style="margin-top: -5px;z-index: 1">

        <c:forEach items="${answers}" var="answer">
            <div class="row" style="height: 280px;margin-top: 10px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
                <div class="col-md-12">
                    <div class="row" >
                        <div class="col-md-12">
                            <span>来自话题：电影</span>
                        </div>
                    </div>
                    <div class="row" >
                        <div class="col-md-12">
                           <%-- <a  href="/question/findQuestion?id=${question.id}" style="cursor: pointer"><span>${question.title}</span></a>--%>
                        </div>
                    </div>
                    <div class="row" >
                        <div class="col-md-12">
                                ${answer.content}
                        </div>
                    </div>
                        <%--  <div class="row" >
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
    <div class="col-md-2" style="margin-left: 60%;margin-top: 5px; position: fixed;">
        <div class="row" style="height: 175px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
            <div class="col-md-12"></div>
        </div>
        <div class="row" style="height: 300px;margin-top: 10px;background-color: white;box-shadow:1px 1px 2px #DDDFE0">
            <div class="col-md-12"></div>
        </div>
    </div>
    <div class="col-md-3" >


    </div>
</div>
<div class="row" id="answer" style="display: none;padding-top: 520px">
    <div class="col-md-12">
        <div id="editor">
            <div class="answerContent">
                <p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
            </div>
        </div>
        <button onclick="submitAnswer('${question.id}')">提交回答</button>
    </div>
</div>

</div>


</body>
<script>
    $(function () {
        var E = window.wangEditor
        var editor = new E('#editor')
        editor.create()
    });

    function  haveAnswer(id) {
        $("#answer").show();
    }
    function  submitAnswer(id) {
        var answerContent = $(".answerContent").html();
//        alert(answerContent)
        location.href="/question/addAnswer?id="+id+"&answerContent="+answerContent;
    }

    function  followQuestion(id) {

        location.href="/question/followQuestion?id="+id;
    }

</script>
</html>
