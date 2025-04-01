<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
			pageContext.setAttribute("path", path);
			pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="${basePath}">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>销售专员,人才招聘 -  汽车汽配公司网站</title>
<meta content="人才招聘,全职,不要求, " name="keywords" />
<meta content="认真负责" name="description" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="bf/style/css/style.css" />
<link rel="stylesheet" type="text/css" href="bf/style/css/jquery.jscrollpane.css" />
<script type="text/javascript" src="bf/style/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="bf/style/js/lang-chi.min.js"></script>
<script type="text/javascript" src="bf/style/js/common.min.js"></script>
<script type="text/javascript" src="bf/style/js/overlay.min.js"></script>
<script type="text/javascript" src="bf/style/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="bf/style/js/mwheelIntent.js"></script>
<script type="text/javascript" src="bf/style/js/jquery.jscrollpane.min.js"></script>
<script type="text/javascript" src="bf/style/js/PCASClass.js"></script>
<script type="text/javascript" src="back/js/jquery.js"></script>
<script type="text/javascript" src="back/artDialog/dist/dialog-plus.js"></script>
<link href="back/artDialog/css/ui-dialog.css" rel="stylesheet"
    type="text/css" />
<script type="text/javascript">
function clientMdi(client_id) {
    var d = top.dialog({
        title: '修改用户',
        url:'bf/clientLoad1?client_id='+client_id,
        width:'600',
        height:'500',
        onclose:function(){
            window.location.reload();
        }
    });
    d.showModal();
}
function clientPasswordMdi() {
    var d = top.dialog({
        title: '修改密码',
        url:'bf/clientPasswordMdi',
        width:'600',
        height:'500',
        onclose:function(){
            window.location.href="bf/loginOut";
        }
    });
    d.showModal();
}
function clientPayPasswordMdi() {
    var d = top.dialog({
        title: '修改密码',
        url:'bf/clientPayPasswordMdi',
        width:'600',
        height:'500',
        onclose:function(){
            window.location.href="bf/loginOut";
        }
    });
    d.showModal();
}
function grAdd(cars_name,client_id,cars_id,or_id,pages) {
    var d = top.dialog({
        title: '订单评价',
        url:'bf/grAdd?cars_name='+cars_name+'&fk_grClient_id='+client_id+'&fk_grCar_id='+cars_id+"&or_id="+or_id+"&pages="+pages,
        width:'600',
        height:'500',
        onclose:function(){
            window.location.reload();
        }
    });
    d.showModal();
}
</script>
<script type="text/javascript">
function login() {
    var d = top.dialog({
        title: '前台登录',
        url:'bf/login',
        width:'600',
        height:'500',
        onclose:function(){
            window.location.reload();
        }
    });
    d.showModal();
}
function reg() {
    var d = top.dialog({
        title: '前台注册',
        url:'bf/reg',
        width:'600',
        height:'500',
        onclose:function(){
            window.location.reload();
        }
    });
    d.showModal();
}
function loginOut() {
    if(window.confirm("确定要退出吗？")){
        window.location.href="bf/loginOut";
    }
    
}
</script>
</head>
<body >
<div id="doc">
  <div id="hd">
    <div class="clearfix pagetitle">
      <h1 class="sitename"><a href="bf/main" title=""><img id="sitelogo" class="ifixpng" src="bf/style/images/logo.png"  alt="" /></a></h1>
      <div class="clearfix extra">
        <div class="language-inner">
                        <c:if test="${empty sessionScope.client }">
                            <a href="javascript:void(0)" onclick="login()">登录</a> | <a href="javascript:void(0)" onclick="reg()">注册</a>
                        </c:if>
                        <c:if test="${!(empty sessionScope.client) }">欢迎${sessionScope.client.client_name } | <a href="javascript:void(0)" onclick="loginOut()">退出</a>
                        </c:if>
                    </div>
        <div class="clearfix sitenav">
          <div class="clearfix menu-main">
            <jsp:include page="nav.jsp"></jsp:include>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="bd">
    <div id="sys-banner">
      <div id="banner-main" class="banner banner-main">
        <div class="banner-inner"><img src="bf/images/2821431010008114.jpg" alt=""></div>
      </div>
    </div>
    <div id="innerpg" class="bd-inner">
      <div class="clearfix  layout-innerpg">
        <div class="col-main">
          <div class="main-wrap">
            <div id="jobs-list" class="block first-block">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">订单列表</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                <div class="list-table">
                  <table class="data">
                    <thead>
                      <tr>
                        <th>订单号</th>
                        <th>车名</th>
                        <th>数量</th>
                        <th>单价</th>
                        <th>总价</th>
                        <th>状态</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${ordersList }" var="orders">
                      <tr>
                        <th>${orders.or_code }</th>
                        <th>${orders.cars.cars_name }</th>
                        <th>${orders.or_num }</th>
                        <th>${orders.cars.cars_price }</th>
                        <th>${orders.or_money }</th>
                        <th>
                            <c:if test="${orders.or_status eq 1 }">等待发货</c:if>
                            <c:if test="${orders.or_status eq 2 }">已发货</c:if>
                            <c:if test="${orders.or_status eq 3 }">已收货</c:if>
                            <c:if test="${orders.or_status eq 4 }">退货中</c:if>
                            <c:if test="${orders.or_status eq 5 }">退货成功</c:if>
                            <c:if test="${orders.or_status eq 6 }">已评价</c:if>
                        </th>
                        <th>
                            <c:if test="${orders.or_status eq 1 }">等待发货</c:if>
                            <c:if test="${orders.or_status eq 2 }"><a href="bf/ordersMdi?or_status=3&pages=${pages }&or_id=${orders.or_id}" class="btn-inner" >确认收货</a></c:if>
                            <c:if test="${orders.or_status eq 3 }"><a href="javascript:void(0)" onclick="grAdd('${orders.cars.cars_name}',${orders.client.client_id },${orders.cars.cars_id },${orders.or_id },${pages })" class="btn-inner" >评价</a></c:if>
                            <c:if test="${orders.or_status eq 4 }">退货中</c:if>
                            <c:if test="${orders.or_status eq 5 }">退货成功</c:if>
                            <c:if test="${orders.or_status eq 6 }">已评价</c:if>
                            <c:if test="${!((orders.or_status eq 5)||(orders.or_status eq 4)) }">
                                <a href="bf/ordersMdi?or_status=4&pages=${pages }&or_id=${orders.or_id}" class="btn-inner" >退货</a>
                            </c:if>
                        </th>
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sub">
          <div style="display:none;"></div>
          <div class="block first-block block-jobs " id="block-jobs-39565" rel="39565">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">个人信息</h2>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="item-list">
                        <ul class="clearfix">
                          <li> 姓　　名：${client.client_name }</li>
                          <li> 账　　号：${client.client_account }</li>
                          <li> 电　　话：${client.client_tel }</li>
                          <li>　<button class="btn-inner" onclick="clientMdi(${client.client_id})"  type="button">更改信息</button></li>
                          <li> <button onclick="clientPasswordMdi()" class="btn-inner" type="button">更改登录密码</button></li>
                          <li> <button class="btn-inner" onclick="clientPayPasswordMdi()" type="button">更改支付密码</button></li>
                        </ul>
              </div>
            </div>
            <jsp:include page="../back/main/pages.jsp"></jsp:include>
            <div class="block-foot">
              <div>
                <div>-</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="ft">
    <div class="ft-inner">
      <div class="ft-menu"  id="ft-menu"> <a href="javascript:void(0)" target="_self">联系我们</a> | <a href="javascript:void(0)" target="_self">公司介绍</a> | <a href="javascript:void(0)" target="_self">网站新闻</a> | <a href="javascript:void(0)" target="_self">留言系统</a> | <a href="javascript:void(0)" target="_self">友情链接</a> </div>
      <div class="siteinfo" id="ft-siteinfo"> <a href="http://www.miibeian.gov.cn/"></a></div>
    </div>
  </div>
</div>
</body>
</html>
