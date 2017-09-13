<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<div class="row" style="height: 55px;width:100%;background-color: white;box-shadow:1px 1px 1px #DDDFE0;position: fixed;z-index: 2">
    <div class="col-md-3">
    </div>
    <div class="col-md-6">
        <div class="row" style="margin-top: 5px ;" >
            <div class="col-md-1">
                <img src="../../../img/logo.png" style="cursor: pointer;">
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <a href="/user/home" style="text-decoration: none;cursor: pointer;"><span style="font-family: 'Adobe Caslon Pro';font-size: 16px;">首页</span></a>
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <a style="text-decoration: none;cursor: pointer;"><span style="font-family: 'Adobe Caslon Pro';font-size: 16px;">发现</span></a>
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <a onclick="topic()" style="text-decoration: none;cursor: pointer;"><span style="font-family: 'Adobe Caslon Pro';font-size: 16px;">话题</span></a>
            </div>
            <div class="col-md-3" style="margin-top: 10px">
                <input type="text"  style="height: 30px;width: 230px" id="questionContent" placeholder="搜索你感兴趣的内容...">
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <button data-toggle="modal" data-target="#questionmodal" class="btn btn-primary" style="background-color: #0F88EB">提问</button>
            </div>
            <div class="col-md-1" style="margin-top: 7px">
                <img src="../../../img/message.png" >
            </div>
            <div class="col-md-1" style="margin-top: 10px">
                <img src="../../../img/duihua.png" >
            </div>
            <c:if test="${sessionScope.user!=null}">


                <div class="dropdown" style="margin-left: 760px">
                    <a id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span>${sessionScope.user.username}</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dLabel">
                        <li><a href="#"><img src="../../../img/wode.png">我的主页</a></li>
                        <li><a href="#"><img src="../../../img/setting.png">设置</a></li>
                        <li><a href="#"><img src="../../../img/out.png">退出</a></li>
                    </ul>
                </div>
            </c:if>
            <c:if test="${sessionScope.user==null}">
                <div class="col-md-1" style="margin-top: 10px">
                    <a href="/user/loginPage"><span >登录</span></a>
                </div>
                <div class="col-md-1" style="margin-top: 10px">
                    <a href="/user/registerPage"><span >注册</span></a>
                </div>
            </c:if>


        </div>

    </div>
    <div class="col-md-3">
    </div>
</div>
<script>
    function  topic() {

    }
</script>