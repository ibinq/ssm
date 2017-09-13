<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<%--jquery--%>
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
<!-- 最新版本的 Bootstrap -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<%--<style>
    * {
        padding: 0;
        margin: 0;
    }
    /*
      * 外面盒子样式---自己定义
      */

    .page_div {
        margin-top: 20px;
        margin-bottom: 20px;
        font-size: 15px;
        font-family: "microsoft yahei";
        color: #666666;
        margin-right: 10px;
        padding-left: 20px;
        box-sizing: border-box;
    }
    /*
     * 页数按钮样式
     */
    .page_div a {
        min-width: 30px;
        height: 28px;
        border: 1px solid #dce0e0!important;
        text-align: center;
        margin: 0 4px;
        cursor: pointer;
        line-height: 28px;
        color: #666666;
        font-size: 13px;
        display: inline-block;
    }
    #firstPage,
    #lastPage {
        width: 50px;
        color: #0073A9;
        border: 1px solid #0073A9!important;
    }
    #prePage,
    #nextPage {
        width: 70px;
        color: #0073A9;
        border: 1px solid #0073A9!important;
    }
    .page_div .current {
        background-color: #0073A9;
        border-color: #0073A9;
        color: #FFFFFF;
    }
    .totalPages {
        margin: 0 10px;
    }
    .totalPages span,
    .totalSize span {
        color: #0073A9;
        margin: 0 5px;
    }
</style>--%>
<body>
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <h2>用户</h2>
        <table class="table table-striped">
            <tr>
                <th>编号</th>
                <th>用户名</th>
                <th>密码</th>
            </tr>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="3" align="center">
                    当前${pageBean.currentPage }/${pageBean.pageCount }页     &nbsp;&nbsp;

                    <a href="/user/findUser?currentPage=1">首页</a>
                    <a href="/user/findUser?currentPage=${pageBean.currentPage-1}">上一页 </a>
                    <a href="/user/findUser?currentPage=${pageBean.currentPage+1}">下一页 </a>
                    <a href="/user/findUser?currentPage=${pageBean.totalPage}">末页</a>
                    共${pageBean.pageCount}页
                </td>
            </tr>
        </table>
    </div>
    <div class="col-md-3"></div>
</div>
<%--<div id="page" class="page_div"></div>--%>

</body>
<%--<script type="text/javascript" src="public/paging.js"></script>
<script>
    //分页
    $("#page").paging({
        totalPage: 10,
        totalSize: 300,
        callback: function(num) {
            alert(num)
        }
    })
</script>--%>
</html>
