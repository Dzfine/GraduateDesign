<%--
  Created by IntelliJ IDEA.
  User: bes
  Date: 2019/2/16
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册成功</title>
    <script language="JavaScript1.2" type="text/javascript">
        function delayURL(url) {
            var delay = document.getElementById("time").innerHTML;
            //最后的innerHTML不能丢，否则delay为一个对象
            if(delay > 0){
                delay--;
                document.getElementById("time").innerHTML = delay;
            }else{
                window.top.location.href = url;
            }
            setTimeout("delayURL('" + url + "')", 1000);  //此处1000毫秒即每一秒跳转一次
        }
    </script>
</head>
<br>
    ${msg}</br>
    <span id="time">5</span>秒后自动跳转至登录页面...若不跳转请点击
    <a href="${pageContext.request.contextPath }/Login.jsp">此处</a>
    <%--<script>
        var time = 5;
        var timer = setInterval(time, 1000);
        var spans = document.getElementById("begin");
        function time() {
            for ( ; ; ) {
                time--;
                spans.innerHTML = '<span>' + time + '</span>';
                if (time == 0) {
                    clearInterval(timer);
                    return window.location.href = '${pageContext.request.contextPath }/Login.jsp';
                }
            }
        }
        time();
    </script>--%>
    <script type="text/javascript">
        delayURL("${pageContext.request.contextPath }/Login.jsp");
    </script>
</body>
</html>
