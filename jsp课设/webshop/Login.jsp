<%@ page language="java" contentType="text/html; charset=UTF-8" language="java" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>百货商城</title>
    <link rel="stylesheet" type="text/css" href="css/Login.css">
    <link rel="stylesheet" type="text/css" href="css/1.css">
    <script type="text/javascript" src="js/all.js"></script>

</head>

<body>
    <jsp:include page="Search.jsp"></jsp:include>
    <div class="container">
        <div class="container ivu-row">
            <div class="login-img-box ivu-col ivu-col-span-13 ivu-col-offset-2"><img src="img/sale.jpg" alt="">
            </div>
            <div class="login-box ivu-col ivu-col-span-7">
                <div class="login-container">
                    <div class="login-header">
                        <p>欢迎登录</p>
                    </div>
                    <div class="form-box">
                            <p style="margin-left: 50px;"><label class="label_input">用户名</label><br><input type="text"
                                    id="username" maxlength="11" placeholder="请输入用户名" class="text_field" />
                            </p>
                            <p style="margin-left: 50px;"><label class="label_input">密码</label><br><input type="text"
                                    id="password" maxlength="6" placeholder="请输入密码" class="text_field" />
                            </p>

                            <div id="login_control" style="margin-left: 50px;">
                                <input type="button" id="btn_login" value="登录" onclick="login()"/>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="Footer.jsp"></jsp:include>
</body>

</html>