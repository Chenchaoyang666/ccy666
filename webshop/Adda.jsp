<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>百货商城</title>
    <link rel="stylesheet" type="text/css" href="css/1.css">
    <link rel="stylesheet" type="text/css" href="css/ivew.css">
    <link rel="stylesheet" type="text/css" href="css/Adda.css">
    <link rel="stylesheet" type="text/css" href="css/personinfo.css">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script>
        $(function () {
            $("#addbtn").click(function () {
                $(window).attr('location', "ope.jsp?op=adizhi&phone=" + $("#el3").val()
                    + "&name=" + $("#el1").val() + "&address=" + $("#el2").val() + "&postcode=" + $("#el4").val());
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
                                <li class="ivu-menu-item ivu-menu-item-active ivu-menu-item-selected"
                                    style="padding-left: 43px;">添加收货地址</li>
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
                                <li class="ivu-menu-item" style="padding-left: 43px;"><a href="Myinfo.jsp">我的个人信息</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="ivu-layout-sider-trigger" style="width: 200px; display: none;"><i
                        class="ivu-icon ivu-icon-chevron-left ivu-layout-sider-trigger-icon"></i></div>
            </div>
            <div class="layout ivu-layout">
                <div class="ivu-layout-header" style="background: rgb(255, 255, 255);">
                    <h2>添加收货地址</h2>
                </div>
                <div class="content ivu-layout-content">
                    <div>
                        <div class="add-container">
                            <div class="add-title">
                                <h1>添加收货地址</h1>
                            </div>
                            <div class="add-box">
                                <form autocomplete="off" class="ivu-form ivu-form-label-left">
                                    <div class="ivu-form-item ivu-form-item-required"><label class="ivu-form-item-label"
                                            style="width: 100px;">收件人</label>
                                        <div class="ivu-form-item-content" style="margin-left: 100px;">
                                            <div class="ivu-input-wrapper ivu-input-wrapper-large ivu-input-type">
                                                <!---->
                                                <!----> <i
                                                    class="ivu-icon ivu-icon-load-c ivu-load-loop ivu-input-icon ivu-input-icon-validate"></i>
                                                <input autocomplete="off" spellcheck="false" type="text" placeholder=""
                                                    class="ivu-input ivu-input-large" id="el1">
                                                <!---->
                                            </div>
                                            <!---->
                                        </div>
                                    </div>
                                    <div class="ivu-form-item ivu-form-item-required"><label class="ivu-form-item-label"
                                            style="width: 100px;">收件地址</label>
                                        <div class="ivu-form-item-content" style="margin-left: 100px;">
                                            <div class="ivu-input-wrapper ivu-input-wrapper-large ivu-input-type">
                                                <!---->
                                                <!----> <i
                                                    class="ivu-icon ivu-icon-load-c ivu-load-loop ivu-input-icon ivu-input-icon-validate"></i>
                                                <input autocomplete="off" spellcheck="false" type="text" placeholder=""
                                                    class="ivu-input ivu-input-large" id="el2">
                                                <!---->
                                            </div>
                                            <!---->
                                        </div>
                                    </div>
                                    <div class="ivu-form-item ivu-form-item-required"><label class="ivu-form-item-label"
                                            style="width: 100px;">手机号码</label>
                                        <div class="ivu-form-item-content" style="margin-left: 100px;">
                                            <div class="ivu-input-wrapper ivu-input-wrapper-large ivu-input-type">
                                                <!---->
                                                <!----> <i
                                                    class="ivu-icon ivu-icon-load-c ivu-load-loop ivu-input-icon ivu-input-icon-validate"></i>
                                                <input autocomplete="off" spellcheck="false" type="text" placeholder=""
                                                    class="ivu-input ivu-input-large" id="el3">
                                                <!---->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ivu-form-item ivu-form-item-required"><label class="ivu-form-item-label"
                                            style="width: 100px;">邮政编码</label>
                                        <div class="ivu-form-item-content" style="margin-left: 100px;">
                                            <div class="ivu-input-wrapper ivu-input-wrapper-large ivu-input-type">
                                                <!---->
                                                <!----> <i
                                                    class="ivu-icon ivu-icon-load-c ivu-load-loop ivu-input-icon ivu-input-icon-validate"></i>
                                                <input autocomplete="off" spellcheck="false" type="text" placeholder=""
                                                    class="ivu-input ivu-input-large" id="el4">
                                                <!---->
                                            </div>
                                            <!---->
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="add-submit"><button type="button" class="ivu-btn ivu-btn-primary" id="addbtn">
                                    <span>添加地址</span></button></div>
                        </div>
                    </div>
                </div>
                <div class="layout-footer-center ivu-layout-footer">2020 © Yang</div>
            </div>
        </div>
    </div>
</body>

</html>