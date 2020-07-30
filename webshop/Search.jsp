<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="css/Search.css">
    <link rel="stylesheet" type="text/css" href="css/1.css">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script>
        $(function () {
            if (localStorage.getItem("token") != "null" && localStorage.getItem("token")) {
                $("#u1").css("display", "block");
                $("#u2").css("display", "none");
                $("#aname").prepend("欢迎" + localStorage.getItem("token"));
            } else {
                $("#u1").css("display", "none");
                $("#u2").css("display", "block");
            }
        });
    </script>
</head>

<body>
    <div class="box">
        <div class="nav">
            <ul class="location">
                <li>
                    西安
                </li>
            </ul>
            <ul class="detail" id="u1">
                <li class="first">
                    <a href="Login.jsp" id="aname">登录</a>|<span><a href="Register.jsp"
                            style="color: rgba(255, 0, 0, 0.918);">免费注册</a></span>
                </li>
                <li>
                    <a href="Shopcar.jsp"> 购物车 </a>
                </li>
                <li><a href="Myinfo.jsp">个人中心</a></li>
                <li><a href="Advise.jsp">意见反馈</a></li>
                <li><a href="Home.jsp">商城首页</a></li>
            </ul>
            <ul class="detail" id="u2">
                <li class="first">
                    <a href="Login.jsp">登录</a>|<span><a href="Register.jsp"
                            style="color: rgba(255, 0, 0, 0.918);">免费注册</a></span>
                </li>
                <li>
                    <a> 购物车 </a>
                </li>
                <li><a>个人中心</a></li>
                <li><a>意见反馈</a></li>
                <li><a>商城首页</a></li>
            </ul>
        </div>
    </div>
</body>

</html>