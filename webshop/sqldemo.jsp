<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>

<head>
    <title>SELECT 操作</title>
</head>

<body>
    <!--
JDBC 驱动名及数据库 URL 
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码
 -->
    <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/sc?useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8"
        user="root" password="123456" />

    <sql:query dataSource="${snapshot}" var="result">
        SELECT * from shopcar;
    </sql:query>
    <h1>JSP 数据库实例</h1>
    <table border="1" width="100%">
        <tr>
            <th><input type="checkbox" /></th>
            <th>ID</th>
            <th>站点名</th>
            <th>站点地址</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><input type="checkbox" /></td>
                <td>
                    <c:out value="${row.pic}" />
                </td>
                <td>
                    <c:out value="${row.price}" />
                </td>
                <td>
                    <c:out value="${row.number}" />
                </td>
            </tr>
        </c:forEach>

    </table>
    <form action="demo.jsp" method="post">

        <table width="400" align="center" border="1" cellpadding="0" cellspacing="0">

            <tr>
                <td colspan="2" align="center">向数据库插入信息测试</td>
            </tr>

            <tr>
                <td>username：</td>
                <td><input type="text" name="username" /></td>
            </tr>

            <tr>
                <td>password：</td>
                <td><input type="text" name="password" /></td>
            </tr>

            <tr>
                <td>roleID：</td>
                <td><input type="text" name="roleID" /></td>
            </tr>

            <tr>
                <td colspan="2" align="center"><input type="submit" value="插入" /></td>
            </tr>

        </table>

    </form>
    
    <SCRIPT LANGUAGE="Javascript"'>

        var maxtime = 60 * 60 //一个小时， 按秒计算
        timer = setInterval("CountDown()", 1000);
        function CountDown() {
            if (maxtime >= 0) {
                minutes = Math.floor(maxtime / 60);
                seconds = Math.floor(maxtime % 60);
                msg = "距高结束还有" + minutes + "分";
                msg1 = seconds + "秒";
                document.all["timer"].innerHTML = msg;
                document.all["timer1"].innerHTML = msg1;
                --maxtime;
            }
            else {
                clearInterval(timer);
                alert("时间到，结束!");
            }
        }

    </SCRIPT>
    <script>
        for (var i = 0; i < $("#h3").text(); i++) {
            if ($(' #p' + i).text() != localStorage.getItem("token")) {
                $("#d" + i).css("display", "none");
                console.log(localStorage.getItem("token") + $("#p" + i).text());
            }
        }; for (var i = 0; i < $("#h3").text(); i++) {
            if ($('#p' + i).text() == localStorage.getItem("token")) { alert($("#ph" + i).val()) }
        } </script>
    <div id="timer" style="color:red"></div>
    <div id="timer1" style="color:red"></div>

    <p>距离国庆还有</p>
 
    <p><span></span></p>
     
    <script>

        var oSpan = document.getElementsByTagName(' span')[0]; function tow(n) {
            return n >= 0 && n < 10 ? '0' + n : '' + n;

        }

        function getDate() {

            var oDate = new Date();//获取日期对象

            var oldTime = oDate.getTime();//现在距离1970年的毫秒数

            var newDate = new Date('2020/10/1 00:00:00');

            var newTime = newDate.getTime();//2019年距离1970年的毫秒数

            var second = Math.floor((newTime - oldTime) / 1000);//未来时间距离现在的秒数

            var day = Math.floor(second / 86400);//整数部分代表的是天；一天有24*60*60=86400秒 ；

            second = second % 86400;//余数代表剩下的秒数；

            var hour = Math.floor(second / 3600);//整数部分代表小时；

            second %= 3600; //余数代表 剩下的秒数；

            var minute = Math.floor(second / 60);

            second %= 60;

            var str = tow(day) + '<span class="time">天</span>'

                + tow(hour) + '<span class="time">小时</span>'

                + tow(minute) + '<span class="time">分钟</span>'

                + tow(second) + '<span class="time">秒</span>';

            oSpan.innerHTML = str;

        }

        getDate();

        setInterval(getDate, 1000);

    </script>
</body>

</html>