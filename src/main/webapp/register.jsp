<%@ page language="java"  contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <script>
        function validate() {
            var pwdRegx = /^.*(?=.{6,18})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
            var password = document.getElementById("pwd_validate").innerHTML;
            if (!password.matches(pwdRegx)) {
                document.getElementById("pwd_validate").innerHTML = "密码必须包含一个大写字母、一个小写字母、一个数字、一个特殊字符，长度为6-18位！";
            }
        };
    </script>
</head>
<body>
<div class="container">
    <div class="row col-lg-offset-1 col-lg-10">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">注册邮箱账号</h3>
                </div>
                <div class="panel-body">
                    <form class="fm-form" method="post" autocomplete="off" action="${pageContext.request.contextPath }/user/register">
                        <input type='hidden' name='csrfmiddlewaretoken' value='rklpUz2gXL5mTgF6spUb8YwPcNmu5A4D' />
                        <div id="div_id_email" class="form-group">
                            <label for="id_email" class="control-label  requiredField">注册邮箱
                                <span class="asteriskField">*</span>
                            </label>
                            <div class="controls ">
                                <input class="emailinput form-control" id="id_email" name="email" type="email" required="true" />
                                <span id="email-validate" class="register-validate"></span>
                            </div>
                        </div>
                        <div id="div_id_nickname" class="form-group">
                            <label for="id_nickname" class="control-label  requiredField">昵称
                                <span class="asteriskField">*</span>
                            </label>
                            <div class="controls ">
                                <input class="textinput textInput form-control" id="id_nickname" maxlength="30" name="name" type="text" required="true" />
                                <span id="name-validate" class="register-validate"></span>
                            </div>
                        </div>
                        <div id="div_id_password" class="form-group">
                            <label for="id_password" class="control-label  requiredField">密码
                                <span class="asteriskField">*</span>
                            </label>
                            <div class="controls ">
                                <input class="textinput textInput form-control" id="id_password" maxlength="30" name="password" type="password" required="true" />
                                <span id="pwd-validate" class="register-validate"></span>
                            </div>
                        </div>
                        <p><button class="btn btn-block btn-primary">注 册</button></p>
                        <p><a href="Login.jsp" class="btn btn-block btn-default">登录已有账号</a></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="footer container">
    <div class="">
        <div class=" row col-lg-10 col-lg-offset-1 fm-little text-muted text-center">
            <p>
                电影FM v2 &copy; 2012-2015 support@dianying.fm QQ群：471644884
                <a href="http://www.mvcat.com/" target="_blank" alt="电影推荐">MVCAT电影推荐</a>
            </p>
            <p>
                声明：本站不提供视频观看，将跳转到第三方网站进行观看
            </p>
        </div>
    </div>
</footer>
<a href="#" class="fm-totop btn btn-default fm-totop">
    <span class="glyphicon glyphicon-arrow-up"></span>
    <br> 顶部
</a>
<script type="text/javascript">
    validate();
</script>
</body>

</html>
