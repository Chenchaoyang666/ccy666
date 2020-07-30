<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*,java.util.Scanner"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>

<head>
    <title>opedemo 操作</title>
    <link rel="stylesheet" type="text/css" href="css/Home.css">
    <link rel="stylesheet" type="text/css" href="css/1.css">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script>
        $(function () {
            $("div[id]").each(function (i, e) {
                var price = parseFloat($(this).find(".price").text());
                var title = $(this).find(".title").text();
                var pic = $(this).find(".pic").attr("src");
                $(this).find(".add").click(function () {
                    if (localStorage.getItem("token") != "null" && localStorage.getItem("token")) {
                        $(window).attr('location', 'ope.jsp?op=intocar&price=' + price + '&title=' + title + '&pic=' + pic);
                    }
                });
            });
        });
    </script>
</head>

<body>
    <%
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	String url ="jdbc:mysql://localhost:3306/sc?user=root&password=123456&useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8";
	Connection conn= DriverManager.getConnection(url);
	PreparedStatement pstat = null;
	ResultSet rs = null;
    String sql = null;
		sql = "select * from goods";
		pstat = conn.prepareStatement(sql);
        rs = pstat.executeQuery();
        int x=1;
		while (rs.next()){
			String pic = rs.getString("pic").trim();
            String title = rs.getString("title").trim();
            String price = rs.getString("price").trim();
            String oldprice = rs.getString("oldprice").trim();
            %>
    <div class="seckill-item" id="prod<%=x%>">
        <div class="seckill-item-img">
            <img src="<%=pic%>" class="pic">
        </div>
        <div class="seckill-item-info">
            <p class="title"><%=title%></p>
            <p>
                <span class="seckill-price text-danger">￥<span class="price"><%=price%></span></span>
                <span class="seckill-old-price"><s><%=oldprice%></s></span>
                <a style="float: right;margin-top: 7px;font-size: 18px;font-weight: bold;" class="add">+</a>
            </p>
        </div>
    </div>
    <%			
        x++;}
        rs.close();
        pstat.close();
        conn.close();
    %>

</body>

</html>