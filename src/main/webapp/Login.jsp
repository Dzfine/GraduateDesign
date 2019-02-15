<%@ page language="java"  contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/uploading.css">--%>
    <script type="text/javascript" src="${pageContext.request.contextPath }/WEB-INF/js/bootstrap.min.js"></script>
</head>
<body class="upload_page">
<div class="login">
    <div class="top">
        Login
    </div>
    <form action="user/userLogin" method="post" onsubmit="return validate()">
        <div class="input-group login_input">
            <span class="input-group-addon" id="basic-addon1">
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
            </span>
            <input name="name" required="true" type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
        </div>
        <div class="input-group login_input">
            <span class="input-group-addon" id="basic-addon2">
                <span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>
            </span>
            <input name="password" required="true" type="password" class="form-control" placeholder="Password" aria-describedby="basic-addon1">
        </div>
        <button type="submit" class="btn btn-info login_btn">登录</button>
    </form>
    <a href="register.jsp" class="btn btn-info login_btn">注册</a>
    <div class="error"><c:if test="${errorMsg!=null }"><font color="red">${errorMsg}</font></c:if></div>
</div>
</body>
<script type="text/javascript">

</script>
</html>
