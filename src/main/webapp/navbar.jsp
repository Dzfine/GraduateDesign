<%@ page language="java"  contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WEB-INF/css/bootstrap.min.css" charset="utf-8">
    <link rel="stylesheet" type="text/css" href="./WEB-INF/css/v2.css" charset="utf-8">
    <title></title>
</head>
<body>
    <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
        <div class="container">
            <div class="row col-lg-10 col-lg-offset-1">
                <div class="navbar-header" style="">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand fmlogo" href="/">电影FM <span style="font-size: 12px;">beta</span></a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                    </ul>
                    <ul class=" nav navbar-nav pull-right">
                        <li class=""><a href="/caitu/">猜电影</a></li>
                        <li class=""><a href="/search/">电影大全</a></li>
                        <li class=""><a href="/collection/">电影专辑</a></li>

                        <li class="">
                            <a href="Login.jsp" class="fm-nav-login">
                                注册 / 登录
                            </a>
                        </li>

                    </ul>
                    <form class="navbar-form navbar-left fm-search" role="search" action="/search/" method="get">
                        <div class="input-group">
                            <input type="text" class="form-control input-sm" name="text" placeholder="电影、艺人、导演">
                            <span class="input-group-btn">
                                    <button type="submit" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-search"></span></button>
                                </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="WEB-INF/js/bootstrap.js" type="text/javascript"></script>
    <script src="WEB-INF/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="WEB-INF/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">

    </script>
</body>

</html>
