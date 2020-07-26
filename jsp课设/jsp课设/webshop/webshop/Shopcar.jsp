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
    <link rel="stylesheet" type="text/css" href="css/Shopcar.css">
    <link rel="stylesheet" type="text/css" href="css/1.css">
    <link rel="stylesheet" type="text/css" href="css/ivew.css">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script>
        $(function () {
            function calculate() {
                var total_price = 0;
                $("tr[id]").each(function (i, e) {
                    var price;
                    var number;
                    price = parseFloat($(this).find(".price").text());
                    number = parseInt($(this).find(".num").val());
                    if ($(this).find(".onecheck").is(":checked") == true) {
                        total_price = total_price + (number * price);
                    }
                });
                $("#total").text("￥ " + parseFloat(total_price).toFixed(2));
            }
            function sendinfo() {
                var count = 0;
                var order = "ope.jsp?&op=sendinfo";
                $("tr[id]").each(function (i, e) {
                    if ($(this).find(".onecheck").is(":checked") == true) {
                        price = parseFloat($(this).find(".price").text());
                        number = parseInt($(this).find(".num").val());
                        pic = $(this).find(".pic").attr("src");
                        title = $(this).find(".title").text();
                        selecttype = $(this).find(".selecttype").text();
                        name = $("input[type='radio']:checked").parent().next().find(".name").text();
                        phone = $("input[type='radio']:checked").parent().next().find(".phone").text();
                        address = $("input[type='radio']:checked").parent().next().find(".address").text();
                        postcode = $("input[type='radio']:checked").parent().next().find(".postcode").text();
                        order = order + "&price" + count + "=" + price + "&number" + count + "=" + number + "&pic" + count + "=" + pic
                            + "&title" + count + "=" + title + "&selecttype" + count + "=" + selecttype + "&name" + count + "=" + name
                            + "&phone" + count + "=" + phone + "&address" + count + "=" + address + "&postcode" + count + "=" + postcode;
                        if (name) { count++; }
                    }
                });
                if (count == 0) { alert("请选择订单或收获地址！"); }
                else {
                    alert("正在为你生成订单......在点击确认后前往付款！");
                    $(window).attr('location', order + "&count=" + count);
                }
            }
            $("#paybtn").click(function () {
                sendinfo();
            });
            $(".onecheck").click(function () {
                calculate();
            });
            $(".hand[alt=minus]").click(function () {
                var number = $(this).next(".num").val();
                number--;
                if (number <= 0) {
                    alert("最少不能为0");
                } else {
                    $(this).next(".num").val(number);
                    calculate();
                }
            });
            $(".hand[alt=add]").click(function () {
                var number = $(this).prev(".num").val();
                number++;
                $(this).prev(".num").val(number);
                calculate();
            });
        });
    </script>
</head>

<body>
    <jsp:include page="Search.jsp"></jsp:include>
    <br />
    <div>
        <div class="search-nav">
            <div class="search-nav-container">
                <ul>
                    <li>购物车列表</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="goodcont">
        <div class="d1">
            <p style="font-size: 20px;">小提示</p>
            <p style="font-size: 14px;">请点击商品前的选择框，选择购物车中的商品，点击付款即可。</p>
        </div>
        <div class="ivu-table-wrapper">
            <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
                url="jdbc:mysql://localhost:3306/sc?useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8"
                user="root" password="123456" />
            <sql:query dataSource="${snapshot}" var="result">
                SELECT * from shopcar;
            </sql:query>
            <h3 style="text-align: center;">我的购物记录</h3>
            <div class="ivu-table ivu-table-large ivu-table-border">
                <div class="ivu-table-header">
                    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%;">
                        <colgroup>
                            <col width="9%">
                            <col width="11%">
                            <col width="25%">
                            <col width="25%">
                            <col width="10%">
                            <col width="10%">
                            <col width="10%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="ivu-table-column-center">
                                    <div class="ivu-table-cell">
                                    </div>
                                </th>
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
                                    <div class="ivu-table-cell"><span class="">操作栏</span>
                                    </div>
                                </th>
                            </tr>
                        </thead>
                    </table>
                </div>
                <div class="ivu-table-body">
                    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%;">
                        <colgroup>
                            <col width="9%">
                            <col width="11%">
                            <col width="25%">
                            <col width="25%">
                            <col width="10%">
                            <col width="10%">
                            <col width="10%">
                        </colgroup>
                        <tbody class="ivu-table-tbody">
                            <c:forEach var="row" items="${result.rows}" varStatus="st">
                                <tr class="ivu-table-row" id="pr${st.index}">
                                    <td class="ivu-table-column-center">
                                        <div class="ivu-table-cell">
                                            <input type="checkbox" class="onecheck">
                                        </div>
                                    </td>
                                    <td class="ivu-table-column-center">
                                        <div class="ivu-table-cell">
                                            <div><img src="${row.pic}" style="width: 40px;height: 40px;" class="pic">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="ivu-table-column-center">
                                        <div class="ivu-table-cell">
                                            <span class="title">
                                                <c:out value="${row.title}" /></span>
                                        </div>
                                    </td>
                                    <td class="ivu-table-column-center">
                                        <div class="ivu-table-cell">
                                            <span class="selecttype">
                                                <c:out value="${row.selecttype}" /></span>
                                        </div>
                                    </td>
                                    <td class="ivu-table-column-center">
                                        <div class="ivu-table-cell">
                                            <img src="img/jian.png" class="hand" alt="minus"
                                                style="height: 16px;width: 16px;border-radius: 50%;">&nbsp;&nbsp;&nbsp;
                                            <input type="text" class="num" readonly="readonly" style="border: none;
                                                outline: none;width: 16px;" value="${row.number}" />&nbsp;&nbsp;&nbsp;
                                            <img src="img/jia.png" class="hand" alt="add"
                                                style="height: 16px;width: 16px;border-radius: 50%;">
                                        </div>
                                    </td>
                                    <td class="ivu-table-column-center">
                                        <div class="ivu-table-cell">
                                            <span class="price">
                                                <c:out value="${row.price}" /></span>
                                        </div>
                                    </td>
                                    <td class="ivu-table-column-center">
                                        <div class="ivu-table-cell">
                                            <span><a href="ope.jsp?op=del&id=${row.id}">删除</a></span>
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
        </div>
        <div class="address-container">
            <h3>收货人信息</h3>
            <div class="address-box">
                <div class="address-check">
                    <div class="address-check-name">收货地址</div>
                    <div class="aaa"">
                        <p>收货地址不能为空</p>
                    </div>
                </div>
                <div class=" ivu-collapse">
                        <sql:query dataSource="${snapshot}" var="result">
                            SELECT * from address;
                        </sql:query>
                        <table border="1" width="100%" style="text-align: center;">
                            <c:forEach var="row" items="${result.rows}">
                                <tr>
                                    <td><input type="radio" /></td>
                                    <td>
                                        <p class="aaa">
                                            <span class="name">
                                                <c:out value="${row.name}" /></span>&nbsp;&nbsp;
                                            <span class="phone">
                                                <c:out value="${row.phone}" />
                                            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <span class="address">
                                                <c:out value="${row.address}" />
                                            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <span class="postcode">
                                                <c:out value="${row.postcode}" /></span>
                                        </p>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
            <div class="remarks-container">
                <h3>备注</h3>
                <div class="r1">
                    <input autocomplete="off" spellcheck="false" type="text" placeholder="选填，请先和商家协商一致" class="ri1">
                </div>
            </div>
            <div class="pay-container">
                <div class="paybox">
                    <p>
                        <pn>提交订单应付总额：</pn>
                        <pn class="money" id="total">￥ 0.00</pn>
                    </p>
                    <div class="paybtn"><button class="btn1" id="paybtn">
                            支付订单
                        </button></div>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
</body>

</html>