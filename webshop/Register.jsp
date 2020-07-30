<%@ page language="java" contentType="text/html; charset=UTF-8" language="java" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>百货商城</title>
    <link rel="stylesheet" type="text/css" href="css/Register.css">
    <link rel="stylesheet" type="text/css" href="css/1.css">
    <script type="text/javascript" src="js/all.js"></script>
</head>

<body>
    <jsp:include page="Search.jsp"></jsp:include>
    <div style="height: 563px;">
        <div class="a">
            <div class="b"><img src="img/signup-sale.png" alt=""
                    style="width: 346px; margin-top: 50px;margin-left: 50px;"></div>
            <div class="c">
                <div class="d">
                    <h1 style="color: rgb(179, 178, 177);margin-left: 20px;">欢迎注册账号</h1> <br>
                </div>
                <div class="sing-up-step-box">
                    <div class="form-box">
                        <p><label class="label_input">用户名</label><br><input type="text" maxlength="11" id="username"
                                placeholder="请输入用户名" class="text_field" />
                        </p>
                        <p style="margin-top: 20px;"><label class="label_input">密码</label><br><input type="text" maxlength="6" id="password" placeholder="请输入密码"
                                class="text_field" />
                        </p>

                        <div id="login_control">
                            <input type="button" id="btn_login" value="注册" onclick="regist();" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ivu-layout-footer"></div>
    </div>
    <jsp:include page="Footer.jsp"></jsp:include>
</body>

</html>