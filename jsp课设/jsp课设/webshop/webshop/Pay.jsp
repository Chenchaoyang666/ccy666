<%@ page language="java" contentType="text/html; charset=UTF-8" language="java" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>百货商城</title>
    <link rel="stylesheet" type="text/css" href="css/Pay.css">
    <link rel="stylesheet" type="text/css" href="css/1.css">
    <link rel="stylesheet" type="text/css" href="css/ivew.css">
    <script type="text/javascript" src="js/all.js"></script>

</head>

<body>
    <jsp:include page="Search.jsp"></jsp:include>
    <div>
        <div class="pay-container">
            <div class="ivu-alert ivu-alert-info ivu-alert-with-icon ivu-alert-with-desc"> <span
                    class="ivu-alert-message">
                    扫码支付
                </span> <span class="ivu-alert-desc">请扫描右边二维码进行支付</span>
                <!---->
            </div>
            <div class="pay-box">
                <div class="pay-demo"><img src="img/pay-demo.png">
                </div>
                <div class="pay-qr-scan"><img src="img/zfb.png">
                    <div class="pay-tips"><a href="Paysuccess.jsp" class="">
                            <p>点击我, 完成支付</p>
                        </a></div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="Footer.jsp"></jsp:include>
</body>

</html>