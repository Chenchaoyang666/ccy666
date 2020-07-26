<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% String t=request.getParameter("token");%>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>百货商城</title>
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
    window.onload = function () {
      var t = "<%=t%>";
      console.log(t);
      if (t != "null") {
        localStorage.setItem("token", t);
        window.location.href = 'Home.jsp';
      }
    }
  </script>
</head>

<body>
  <SCRIPT LANGUAGE="Javascript">
    var maxtime = 60 * 60
    timer = setInterval("CountDown()", 1000);
    function CountDown() {
      if (maxtime >= 0) {
        minutes = Math.floor(maxtime / 60);
        seconds = Math.floor(maxtime % 60);
        if (minutes >= 10)
          document.all["minute"].innerHTML = minutes;
        else
          document.all["minute"].innerHTML = "0" + minutes;
        if (seconds >= 10)
          document.all["second"].innerHTML = seconds;
        else
          document.all["second"].innerHTML = "0" + seconds;
        --maxtime;
      }
      else {
        clearInterval(timer);
        alert("时间到，结束!");
      }
    }
  </SCRIPT>
  <jsp:include page="Search.jsp"></jsp:include>
  <div class="container">
    <!-- 商品显示区域 -->
    <div class="content">
      <!-- 秒杀 -->
      <div class="seckill">
        <!-- 头部 -->
        <div class="seckill-head">
          <div class="seckill-icon">
            <img src="img/clock.png">
          </div>
          <div class="seckill-text">
            <span class="seckill-title">限时秒杀</span>
            <span class="seckill-remarks">总有你想不到的低价(点击+加入购物车)</span>
          </div>
          <div class="count-down">
            <span class="count-down-text">当前场次</span>
            <span class="count-down-num count-down-hour">0</span>
            <span class="count-down-point">:</span>
            <span class="count-down-num count-down-minute" id="minute">60</span>
            <span class="count-down-point">:</span>
            <span class="count-down-num count-down-seconds" id="second">01</span>
            <span class="count-down-text">后结束抢购</span>
          </div>
        </div>
        <!-- 内容 -->
        <div class="seckill-content">
          <div class="seckill-item" id="prod1">
            <div class="seckill-item-img">
              <img src="img/seckill-item1.jpg" class="pic">
            </div>
            <div class="seckill-item-info">
              <p class="title">【赠小风扇】维他 柠檬茶250ml*32盒 礼品装 整箱</p>
              <p>
                <span class="seckill-price text-danger">￥<span class="price">71.9</span></span>
                <span class="seckill-old-price"><s>89.6</s></span>
                <a style="float: right;margin-top: 7px;font-size: 18px;font-weight: bold;" class="add">+</a>
              </p>
            </div>
          </div>
          <div class="seckill-item" id="prod2">
            <div class="seckill-item-img">
              <img src="img/seckill-item2.jpg" class="pic">
            </div>
            <div class="seckill-item-info">
              <p class="title">全新升级版6英寸护眼非反光电子墨水</p>
              <p>
                <span class="seckill-price text-danger">￥<span class="price">989</span></span>
                <span class="seckill-old-price"><s>1299</s></span>
                <a style="float: right;margin-top: 7px;font-size: 18px;font-weight: bold;" class="add">+</a>
              </p>
            </div>
          </div>
          <div class="seckill-item" id="prod3">
            <div class="seckill-item-img">
              <img src="img/seckill-item3.jpg" class="pic">
            </div>
            <div class="seckill-item-info">
              <p class="title">粮悦 大吃兄糯米锅巴 安徽特产锅巴糯米原味400g*2盒</p>
              <p>
                <span class="seckill-price text-danger">￥<span class="price">21.8</span></span>
                <span class="seckill-old-price"><s>49</s></span>
                <a style="float: right;margin-top: 7px;font-size: 18px;font-weight: bold;" class="add">+</a>
              </p>
            </div>
          </div>
          <div class="seckill-item" id="prod4">
            <div class="seckill-item-img">
              <img src="img/seckill-item4.jpg" class="pic">
            </div>
            <div class="seckill-item-info">
              <p class="title">【京东超市】清风（APP）抽纸 原木纯品金装系列 3层</p>
              <p>
                <span class="seckill-price text-danger">￥<span class="price">49.9</span></span>
                <span class="seckill-old-price"><s>59</s></span>
                <a style="float: right;margin-top: 7px;font-size: 18px;font-weight: bold;" class="add">+</a>
              </p>
            </div>
          </div>
          <div class="seckill-item" id="prod5">
            <div class="seckill-item-img">
              <img src="img/seckill-item5.jpg" class="pic">
            </div>
            <div class="seckill-item-info">
              <p class="title">NIKE耐克 男子休闲鞋 AIR MAX 90 ESSENTIAL 气垫</p>
              <p>
                <span class="seckill-price text-danger">￥<span class="price">559.9</span></span>
                <span class="seckill-old-price"><s>759.9</s></span>
                <a style="float: right;margin-top: 7px;font-size: 18px;font-weight: bold;" class="add">+</a>
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="item-class">
        <div class="item-class-head">
          <span class="item-class-title">电脑数码</span>
          <ul>
            <li><a>电脑</a></li>
            <li><a>游戏</a></li>
            <li><a>虚拟现实</a></li>
            <li><a>电子教育</a></li>
            <li><a>摄影摄像</a></li>
            <li><a>智能酷玩</a></li>
            <li><a>二合一平板</a></li>
            <li><a>外设</a></li>
            <li><a>配件</a></li>
          </ul>
        </div>
        <div class="item-class-content">
          <div class="item-content-top">
            <div class="item-big-img">
              <img src="img/item-computer-1.jpg" alt="">
            </div>
            <div class="item-four-img">
              <div class="item-four-detail">
                <div class="item-four-detail-text">
                  <p class="pt_bi_tit">电脑馆</p>
                  <p class="pt_bi_promo" style="font-size: 12px;">笔记本999元限量秒！</p>
                </div>
                <div class="item-four-detail-img">
                  <img src="img/item-computer-2.jpg" alt="">
                </div>
              </div>
              <div class="item-four-detail">
                <div class="item-four-detail-text">
                  <p class="pt_bi_tit">外设装备</p>
                  <p class="pt_bi_promo" style="font-size: 12px;">1000减618</p>
                </div>
                <div class="item-four-detail-img">
                  <img src="img/item-computer-1-3.jpg" alt="">
                </div>
              </div>
              <div class="item-four-detail">
                <div class="item-four-detail-text">
                  <p class="pt_bi_tit">电脑配件</p>
                  <p class="pt_bi_promo" style="font-size: 12px;">联合满减最高省618</p>
                </div>
                <div class="item-four-detail-img">
                  <img src="img/item-computer-1-4.jpg" alt="">
                </div>
              </div>
              <div class="item-four-detail">
                <div class="item-four-detail-text">
                  <p class="pt_bi_tit">办公生活</p>
                  <p class="pt_bi_promo" style="font-size: 12px;">5折神劵精品文具</p>
                </div>
                <div class="item-four-detail-img">
                  <img src="img/item-computer-1-5.jpg" alt="">
                </div>
              </div>
            </div>
          </div>
          <div class="item-content-bottom">
            <div class="item-content-bottom-img">
              <img src="img/item-computer-1-6.jpg">
            </div>
            <div class="item-content-bottom-img">
              <img src="img/item-computer-1-7.jpg">
            </div>
            <div class="item-content-bottom-img">
              <img src="img/item-computer-1-8.jpg">
            </div>
          </div>
        </div>
        <div class="item-class-content">
          <div class="item-content-top">
            <div class="item-big-img">
              <img src="img/item-computer-2-1.jpg" alt="">
            </div>
            <div class="item-four-img">
              <div class="item-four-detail">
                <div class="item-four-detail-text">
                  <p class="pt_bi_tit">平板电脑</p>
                  <p class="pt_bi_promo" style="font-size: 12px;">爆款平板12期免息</p>
                </div>
                <div class="item-four-detail-img">
                  <img src="img/item-computer-2-2.jpg" alt="">
                </div>
              </div>
              <div class="item-four-detail">
                <div class="item-four-detail-text">
                  <p class="pt_bi_tit">智能酷玩</p>
                  <p class="pt_bi_promo" style="font-size: 12px;">抢999减666神劵</p>
                </div>
                <div class="item-four-detail-img">
                  <img src="img/item-computer-2-3.jpg" alt="">
                </div>
              </div>
              <div class="item-four-detail">
                <div class="item-four-detail-text">
                  <p class="pt_bi_tit">娱乐影音</p>
                  <p class="pt_bi_promo" style="font-size: 12px;">大牌耳机低至5折</p>
                </div>
                <div class="item-four-detail-img">
                  <img src="img/item-computer-2-4.jpg" alt="">
                </div>
              </div>
              <div class="item-four-detail">
                <div class="item-four-detail-text">
                  <p class="pt_bi_tit">摄影摄像</p>
                  <p class="pt_bi_promo" style="font-size: 12px;">大牌相机5折抢</p>
                </div>
                <div class="item-four-detail-img">
                  <img src="img/item-computer-2-5.jpg" alt="">
                </div>
              </div>
            </div>
          </div>
          <div class="item-content-bottom">
            <div class="item-content-bottom-img">
              <img src="img/item-computer-2-6.jpg">
            </div>
            <div class="item-content-bottom-img">
              <img src="img/item-computer-2-7.jpg">
            </div>
            <div class="item-content-bottom-img">
              <img src="img/item-computer-2-8.jpg">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="Footer.jsp"></jsp:include>
</body>

</html>