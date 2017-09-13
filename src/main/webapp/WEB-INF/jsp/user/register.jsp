<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<body>
<h2>Hello home!</h2>
<form action="/user/register" method="post">
    <input name="username" type="text">
    <input name="password" type="password">
    <input name="repassword" type="password">
    <button type="submit">提交</button>
</form>
</body>
</html>
