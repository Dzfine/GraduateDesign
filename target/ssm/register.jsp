<%@ page language="java"  contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
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
                    <form class="fm-form" method="post" autocomplete="off" action="/user/register">
                        <input type='hidden' name='csrfmiddlewaretoken' value='rklpUz2gXL5mTgF6spUb8YwPcNmu5A4D' />
                        <div id="div_id_email" class="form-group">
                            <label for="id_email" class="control-label  requiredField">注册邮箱
                                <span class="asteriskField">*</span>
                            </label>
                            <div class="controls ">
                                <input class="emailinput form-control" id="id_email" name="email" type="email" />
                            </div>
                        </div>
                        <div id="div_id_nickname" class="form-group">
                            <label for="id_nickname" class="control-label  requiredField">昵称
                                <span class="asteriskField">*</span>
                            </label>
                            <div class="controls ">
                                <input class="textinput textInput form-control" id="id_nickname" maxlength="30" name="name" type="text" />
                            </div>
                        </div>
                        <div id="div_id_password" class="form-group">
                            <label for="id_password" class="control-label  requiredField">密码
                                <span class="asteriskField">*</span>
                            </label>
                            <div class="controls ">
                                <input class="textinput textInput form-control" id="id_password" maxlength="30" name="password" type="password" />
                            </div>
                        </div>
                        <%--<div id="div_id_captcha" class="form-group">
                            <label for="id_captcha_1" class="control-label  requiredField">算术验证码
                                <span class="asteriskField">*</span>
                            </label>
                            <div class="controls ">
                                <img src="/captcha/image/360820266f9da3c2a86716c454cabbd224d92a8a/" alt="captcha" class="captcha" />
                                <input class="hiddeninput form-control" id="id_captcha_0" name="captcha_0" type="hidden" value="360820266f9da3c2a86716c454cabbd224d92a8a" />
                                <input autocomplete="off" class="textinput textInput form-control" id="id_captcha_1" name="captcha_1" type="text" />
                                <p id="hint_id_captcha" class="help-block">请输入计算结果。</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div id="div_id_tos" class="checkbox">
                                <label for="id_tos" class=" requiredField">
                                    <input checked="checked" class="checkboxinput checkbox" id="id_tos" name="tos" type="checkbox" />已阅读并同意
                                    <a target="_blank" href="/account/terms">用户协议</a>。
                                </label>
                            </div>
                        </div>--%>
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
</body>
<script type="text/javascript">

</script>
</html>
