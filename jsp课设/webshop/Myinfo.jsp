<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>百货商城</title>
    <link rel="stylesheet" type="text/css" href="css/1.css">
    <link rel="stylesheet" type="text/css" href="css/ivew.css">
    <link rel="stylesheet" type="text/css" href="css/Myaddress.css">
    <link rel="stylesheet" type="text/css" href="css/personinfo.css">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/all.js"></script>
    <script>
        $(function () {
            $("div[id]").each(function (i, e) {
                if ($(this).find(".aaaa").text() != localStorage.getItem("token")) {
                    $(this).css("display", "none");
                }
            });
            $(".dis1").click(function () {
                $(".dis").removeAttr("readonly");
            });
            $(".dis2").click(function () {
                $(".dis").attr("readonly", "readonly");
            });
            $("#subbtn").click(function () {
                $("div[id]").each(function (i, e) {
                    if ($(this).find(".aaaa").text() == localStorage.getItem("token")) {
                        alert($(this).find(".phone").val())
                        $(window).attr('location', "ope.jsp?&op=updatemyinfo&phone=" + $(this).find(".phone").val()
                            + "&realname=" + $(this).find(".realname").val() + "&nickname=" + $(this).find(".nickname").val()
                            + "&birthday=" + $(this).find(".birthday").val() + "&id=" + $(this).find(".upid1").text());
                    }
                });
            });
        });
    </script>
</head>

<body>
    <jsp:include page="Search.jsp"></jsp:include>
    <div class="container">
        <div class="layout ivu-layout ivu-layout-has-sider">
            <div class="side-bar ivu-layout-sider"
                style="width: 200px; min-width: 200px; max-width: 200px; flex: 0 0 200px; height: calc(100vh - 35px); background: rgb(255, 255, 255); overflow: auto;">
                <span class="ivu-layout-sider-zero-width-trigger" style="display: none;"><i
                        class="ivu-icon ivu-icon-navicon-round"></i></span>
                <div class="ivu-layout-sider-children">
                    <ul class="ivu-menu ivu-menu-light ivu-menu-vertical" style="width: auto;">
                        <div class="user-icon">
                            <div class="user-img"><img src="img/4.png">
                            </div>
                            <p>阳桑不撩妹</p>
                        </div>
                        <li class="ivu-menu-submenu ivu-menu-item-active ivu-menu-opened ivu-menu-child-item-active">
                            <div class="ivu-menu-submenu-title">
                                <span>收货地址</span> </div>
                            <ul class="ivu-menu" data-old-padding-top="" data-old-padding-bottom=""
                                data-old-overflow="">
                                <li class="ivu-menu-item" style="padding-left: 43px;"><a href="Myaddress.jsp">我的收货地址</a>
                                </li>
                                <li class="ivu-menu-item" style="padding-left: 43px;"><a href="Adda.jsp">添加收货地址</a></li>
                            </ul>
                        </li>
                        <li class="ivu-menu-submenu ivu-menu-opened">
                            <div class="ivu-menu-submenu-title">
                                <span>购物订单</span> </div>
                            <ul class="ivu-menu" data-old-padding-top="" data-old-padding-bottom=""
                                data-old-overflow="">
                                <li class="ivu-menu-item" style="padding-left: 43px;"><a href="Myorder.jsp">我的订单</a>
                                </li>
                            </ul>
                        </li>
                        <li class="ivu-menu-submenu ivu-menu-opened">
                            <div class="ivu-menu-submenu-title">
                                <span>个人资料</span> </div>
                            <ul class="ivu-menu" data-old-padding-top="" data-old-padding-bottom=""
                                data-old-overflow="">
                                <li class="ivu-menu-item ivu-menu-item-active ivu-menu-item-selected"
                                    style="padding-left: 43px;">我的个人信息</li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="ivu-layout-sider-trigger" style="width: 200px; display: none;"><i
                        class="ivu-icon ivu-icon-chevron-left ivu-layout-sider-trigger-icon"></i></div>
            </div>
            <div class="layout ivu-layout">
                <div class="ivu-layout-header" style="background: rgb(255, 255, 255);">
                    <h2>我的个人信息</h2>
                </div>
                <div class="content ivu-layout-content">
                    <div>
                        <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
                            url="jdbc:mysql://localhost:3306/sc?useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8"
                            user="root" password="123456" />
                        <sql:query dataSource="${snapshot}" var="result">
                            SELECT * from user
                        </sql:query>
                        <c:forEach var="row" items="${result.rows}" varStatus="st">
                            <div class="address-box" id="d${st.index}">
                                <p style="display: none;" class="aaaa">${row.phone}</p>
                                <p style="display: none;" class="upid1">${row.id}</p>
                                <div class="address-header"><span>
                                        <c:out value="${row.nickname}" /></span>
                                    <div class="address-action"><span class="dis1">修改</span>
                                        <span class="dis2">保存</span>
                                    </div>
                                </div>
                                <div class="address-content">
                                    <p><span class="address-content-title"> 昵称 :</span>
                                        <input type="text" class="dis nickname" readonly="readonly" style="border: none;
                                        outline: none;" value="${row.nickname}" />
                                    </p>
                                    <p><span class="address-content-title"> 姓名 :</span>
                                        <input type="text" class="dis realname" readonly="readonly" style="border: none;
                                        outline: none;" value="${row.realname}" />
                                    </p>
                                    <p><span class="address-content-title"> 手机号:</span>
                                        <input type="text" class="dis phone" readonly="readonly" style="border: none;
                                        outline: none;" value="${row.phone}" />
                                    </p>
                                    <p><span class="address-content-title"> 生日:</span>
                                        <input type="text" class="dis birthday" readonly="readonly" style="border: none;
                                        outline: none;" value="${row.birthday}" />
                                    </p>
                                </div>
                            </div>
                        </c:forEach>
                        <!---->
                        <div class="add-submit" style="display: flex;justify-content: center;">
                            <button type="button" class="ivu-btn ivu-btn-primary" id="subbtn">
                                <span>提交修改</span></button>&nbsp;&nbsp;
                            <button type="button" class="ivu-btn ivu-btn-primary" onclick="backlogin()">
                                <span>退出登录</span></button></div>
                    </div>
                </div>
                <div class="layout-footer-center ivu-layout-footer">2020 © Yang</div>
            </div>
        </div>
    </div>
</body>

</html>