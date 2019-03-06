<%@ page language="java"  contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" charset="UTF-8"/>
    <link rel="stylesheet" type="text/css" href="./css/bootstrap-theme.css" charset="UTF-8"/>
    <script type="text/javascript" src="./js/bootstrap.min.js"></script>
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body class="upload_page">
<div class="container">
    <div class="row col-lg-offset-1 col-lg-10">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">登录你的观影账号</h3>
                </div>
                <div class="panel-body">
                        <form action="user/userLogin" method="post" onsubmit="return validate()">
                            <div class="row cl">
                                <label class="form-label col-xs-3"><i class="Hui-iconfont">用户名</i></label>
                                <div class="formControls col-xs-8">
                                    <input id="userName" name="name" type="text" required="true" class="input-text size-L" />
                                </div>
                            </div>
                            <div class="row cl">
                                <label class="form-label col-xs-3"><i class="Hui-iconfont">密码</i></label>
                                <div class="formControls col-xs-8">
                                    <input id="password" name="password" type="password" required="true" class="input-text size-L" />
                                </div>
                            </div>
                            <div class="row cl">
                                <label class="form-label col-xs-3"><i class="Hui-iconfont">验证码</i></label>
                                <div class="formControls col-xs-8 col-xs-offset-3">
                                    <input name="captcha" id="checks" class="input-text size-L" required="true" type="text" value="" style="width:150px;" />
                                    <img id="imgVerify" src="${pageContext.request.contextPath}/user/getVerify" alt="点击更换验证码" onclick="getVerify()"  />
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info login_btn" >登录</button>
                            <a href="register.jsp" class="btn btn-info login_btn">注册</a>
                        </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    //获取验证码
    function getVerify(){
        var src1=document.getElementById('imgVerify')
        src1.src = "${pageContext.request.contextPath}/user/getVerify?it="+Math.random();
    }
    //校验验证码
    function checkSum(){
        var html1=document.getElementById('loginingForm');
        var inputStr = $("#checks").val();
        if(inputStr!=null && inputStr!="" && inputStr!="验证码:"){
            inputStr = inputStr.toUpperCase();//将输入的字母全部转换成大写
            html1.action="/user/login?inputStr="+inputStr;//提交表单
        }else{
            alert("验证码不能为空!")
        }
    }
    //登录验证
    function doLogin() {
        var userName = document.getElementById('userName').value;
        var password = document.getElementById('password').value;
        if (null == userName || null == password || "" == userName || "" == password) {
            alert('用户名或密码不能为空!');
        } else {
            //校验验证码
            checkSum();
        }
    }




</script>
</html>
