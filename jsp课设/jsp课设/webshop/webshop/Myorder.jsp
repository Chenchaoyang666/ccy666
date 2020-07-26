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
    <link rel="stylesheet" type="text/css" href="css/Myorder.css">
    <link rel="stylesheet" type="text/css" href="css/personinfo.css">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script>
        $(function () {
            $("tr[id]").each(function (i, e) {
                var id = $(this).find(".tdelid").text();
                $(this).find(".delorder").click(function () {
                    $(window).attr("location", "ope.jsp?op=delorder&id=" + id);
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
                                <li class="ivu-menu-item ivu-menu-item-active ivu-menu-item-selected"
                                    style="padding-left: 43px;">我的订单</li>
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
                    <h2>我的订单</h2>
                </div>
                <div class="content ivu-layout-content">
                    <div>
                        <div class="ivu-table-wrapper">
                            <div class="ivu-table ivu-table-large ivu-table-border">
                                <div class="ivu-table-header">
                                    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%;">
                                        <colgroup>
                                            <col width="5%">
                                            <col width="22%">
                                            <col width="15%">
                                            <col width="5%">
                                            <col width="8%">
                                            <col width="5%">
                                            <col width="10%">
                                            <col width="17%">
                                            <col width="7%">
                                            <col width="6%">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th class="ivu-table-column-center">
                                                    <div class="ivu-table-cell"><span class="">图片</span>
                                                    </div>
                                                </th>
                                                <th class="ivu-table-column-center">
                                                    <div class="ivu-table-cell"><span class="">标题</span>
                                                    </div>
                                                </th>
                                                <th class="ivu-table-column-center">
                                                    <div class="ivu-table-cell"><span class="">套餐</span>
                                                    </div>
                                                </th>
                                                <th class="ivu-table-column-center">
                                                    <div class="ivu-table-cell"><span class="">数量</span>
                                                    </div>
                                                </th>
                                                <th class="ivu-table-column-center">
                                                    <div class="ivu-table-cell"><span class="">价格</span>
                                                    </div>
                                                </th>
                                                <th class="ivu-table-column-center">
                                                    <div class="ivu-table-cell"><span class="">姓名</span>
                                                    </div>
                                                </th>
                                                <th class="ivu-table-column-center">
                                                    <div class="ivu-table-cell"><span class="">手机号</span>
                                                    </div>
                                                </th>
                                                <th class="ivu-table-column-center">
                                                    <div class="ivu-table-cell"><span class="">地址</span>
                                                    </div>
                                                </th>
                                                <th class="ivu-table-column-center">
                                                    <div class="ivu-table-cell"><span class="">邮政编码</span>
                                                    </div>
                                                </th>
                                                <th class="ivu-table-column-center">
                                                    <div class="ivu-table-cell"><span class="">操作栏</span>
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                                <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
                                    url="jdbc:mysql://localhost:3306/sc?useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8"
                                    user="root" password="123456" />
                                <sql:query dataSource="${snapshot}" var="result">
                                    SELECT * from t_order;
                                </sql:query>
                                <div class="ivu-table-body">
                                    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%;">
                                        <colgroup>
                                            <col width="5%">
                                            <col width="22%">
                                            <col width="15%">
                                            <col width="5%">
                                            <col width="8%">
                                            <col width="5%">
                                            <col width="10%">
                                            <col width="17%">
                                            <col width="7%">
                                            <col width="6%">
                                        </colgroup>
                                        <tbody class="ivu-table-tbody">
                                            <c:forEach var="row" items="${result.rows}" varStatus="st">
                                                <tr class="ivu-table-row" id="t${st.index}">
                                                    <td style="display: none;" ><span class="tdelid">${row.id}</span></td>
                                                    <td class="ivu-table-column-center">
                                                        <div class="ivu-table-cell">
                                                            <div><img src="${row.pic}"
                                                                    style="height: 40px;width: 40px;"></div>
                                                        </div>
                                                    </td>
                                                    <td class="ivu-table-column-center">
                                                        <div class="ivu-table-cell">
                                                            <span> 
                                                                <c:out value="${row.title}" /></span>
                                                        </div>
                                                    </td>
                                                    <td class="ivu-table-column-center">
                                                        <div class="ivu-table-cell">
                                                            <span>
                                                                <c:out value="${row.selecttype}" /></span>
                                                        </div>
                                                    </td>
                                                    <td class="ivu-table-column-center">
                                                        <div class="ivu-table-cell">
                                                            <span>
                                                                <c:out value="${row.number}" /></span>
                                                        </div>
                                                    </td>
                                                    <td class="ivu-table-column-center">
                                                        <div class="ivu-table-cell">
                                                            <span>
                                                                <c:out value="${row.price}" /></span>
                                                        </div>
                                                    </td>
                                                    <td class="ivu-table-column-center">
                                                        <div class="ivu-table-cell">
                                                            <span>
                                                                <c:out value="${row.name}" /></span>
                                                        </div>
                                                    </td>
                                                    <td class="ivu-table-column-center">
                                                        <div class="ivu-table-cell">
                                                            <span>
                                                                <c:out value="${row.phone}" /></span>
                                                        </div>
                                                    </td>
                                                    <td class="ivu-table-column-center">
                                                        <div class="ivu-table-cell">
                                                            <span>
                                                                <c:out value="${row.address}" /></span>
                                                        </div>
                                                    </td>
                                                    <td class="ivu-table-column-center">
                                                        <div class="ivu-table-cell">
                                                            <span>
                                                                <c:out value="${row.postcode}" /></span>
                                                        </div>
                                                    </td>
                                                    <td class="ivu-table-column-center">
                                                        <div class="ivu-table-cell">
                                                            <span class="delorder"><a>删除</a></span>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="ivu-table-tip" style="display: none;">
                                    <table cellspacing="0" cellpadding="0" border="0">
                                        <tbody>
                                            <tr>
                                                <td style="width: 657px;"><span>暂无筛选结果</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <object tabindex="-1" type="text/html" data="about:blank"
                                style="display: block; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; border: none; padding: 0px; margin: 0px; opacity: 0; z-index: -1000; pointer-events: none;"></object>
                        </div>
                    </div>
                </div>
                <div class="layout-footer-center ivu-layout-footer">2020 © Yang</div>
            </div>
        </div>
    </div>
</body>

</html>