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
<title>${cars.cars_name }产品中心 - 汽车汽配公司网站</title>
<meta content="雪铁龙C5 2011款 2.3,1件 " name="keywords" />
<meta content="安全配置&车载电话-" name="description" />
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
<script type="text/javascript">
    $(function () {
		$("#a").hide();
	});
</script>
<link rel="stylesheet" href="videos/css/Dvideo.css">
<link rel="stylesheet" href="videos/font-icon/style.css">
<script type="text/javascript" src="back/js/jquery.js"></script>
<script type="text/javascript" src="back/artDialog/dist/dialog-plus.js"></script>
<link href="back/artDialog/css/ui-dialog.css" rel="stylesheet" type="text/css" />
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
//添加购物车
function addSc(cars_id) {
	if("${empty sessionScope.client}"=="false"){
		var sc_num = $("#product_num").val();
		$.post(
                "bf/scAdd",
                {fk_scCars_id:cars_id,sc_num:sc_num},
                function (data) {
                    
                },
                "json"
            );
            alert("添加成功！！");
	}else {
		alert("请登录");
	}
}
//购买
function addOrder(cars_id,cars_price,cars_name,counts) {
    
    if("${empty sessionScope.client}"=="false"){
        var client_id = "${sessionScope.client.client_id }";
        var sc_num = parseInt($("input[name='num"+counts+"']").val());
        var or_money = sc_num*parseInt(cars_price);
        var d = top.dialog({
            title: '添加订单',
            url:'bf/ordersAdd?fk_orCars_id='+cars_id+'&fk_orClient_id='+client_id+'&or_money='+or_money+'&or_num='+sc_num+'&cars_name='+cars_name,
            width:'600',
            height:'500',
            onclose:function(){
                window.location.reload();
            }
        });
        d.showModal();
    }else {
        alert("请登录");
    }
}
function scDel(sc_id) {
    var d = top.dialog({
        title: '删除用户',
        url:'bf/scDel?sc_id='+sc_id,
        width:'600',
        height:'800',
        onclose:function(){
            window.location.reload();
        }
    });
    d.showModal();
} 
</script>
</head>
<body>
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
                    <br />
                    <br />
                    <form></form>
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
        <div class="banner-inner"><img src="bf/style/images/banner-2.jpg" alt="" /></div>
      </div>
    </div>
            <div id="innerpg" class="bd-inner">
                <div class="clearfix  layout-innerpg">
                    <style type="text/css">
.detail-list ul li {
    float: left;
    width: 33%;
    line-height: 30px;
}

.detail-list {
    width: 100%;
    float: left
}
</style>
                    <div class="col-main">
                        <div class="main-wrap">
                            <div id='products-view' class="block block-products-detail">
                                <div class="block-head">
                                    <div class="head-inner">
                                        <h2 class="title"><span>购物车</span></h2>
                                        <div class="links">
                                        </div>
                                    </div>
                                </div>
                                <c:forEach items="${scList }" var="sc" varStatus="vs">
                                <div class="block-content clearfix">
                                    <div id="j-product-view" class="layout-product clearfix">
                                        <div class="col-main">
                                            <div class="main-wrap info">
                                                <h1>${sc.cars.cars_name }</h1>
                                                <div class="details-1">
                                                    <dl class="clearfix price">
                                                        <dt>价格：</dt>
                                                        <dd>
                                                            <strong class="orange">
                                                                ￥
                                                                <span class="" id="market_price">${sc.cars.cars_price }</span>
                                                            </strong>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <div class="details-2 pro_args">
                                                    <span id="lbProps" class="visible"></span>
                                                    <span id="lbskuprop" class="visible"></span>
                                                    <span id="lbskuprice" class="visible"></span>
                                                    <span id="lbskuouterids" class="visible"></span>
                                                    <span id="lbskuquantities" class="visible"></span>
                                                    <span id="lbdiscount" class="visible">1</span>
                                                    <style type="text/css">
.details-2 .visible {
    display: none;
}
</style>
                                                    <dl class="clearfix list-num">
                                                        <dt>数量：</dt>
                                                        <dd>
                                                            <div id="j-num-choose" class="clearfix amount-box">
                                                                <span class="handler">
                                                                    <a class="down" href="javascript:void(0);" title="减少">减少</a>
                                                                </span>
                                                                <span class="enter">
                                                                    <input type="text" class="text-box" name="num${vs.count }" id="product_num" value="${sc.sc_num }" j_max="1" autocomplete="off" />
                                                                </span>
                                                                <span class="handler">
                                                                    <a class="up" href="javascript:void(0);" title="增加">增加</a>
                                                                </span>
                                                            </div>
                                                        </dd>
                                                    </dl>
                                                    <div class="operate-btn">
                                                        <a id="j-btn-buy"  class="btn-buy" href="javascript:void(0);" onclick="addOrder(${sc.cars.cars_id},${sc.cars.cars_price},'${sc.cars.cars_name}',${vs.count })" title="立即购买">立即购买</a> 
                                                        <a id="j-btn-add" class="btn-add" href="javascript:void(0);"
                                                            onclick="scDel(${sc.sc_id});" j_rel="#17116" >删除</a>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                         <div style="height: 155px;" class="col-sub">
                                            <div style="height: 150px;" id="product-gallery">
                                                <div style="height: 150px;" class="wrap">
                                                    <a  id="product-show" class="picholder" href="/upload/${sc.cars.cars_pho }" target="_blank"><img style="height: 200px;"  src="/upload/${sc.cars.cars_pho }" alt="" rel="270,270" /></a>
                                                </div>
                                                
                                            </div>
                                           
                                        </div>
                                         
                                    </div>
                                    
                                </div>
                                </c:forEach>
                                <%-- <jsp:include page="../back/main/pages.jsp"></jsp:include>  --%>
                                <div class="block-foot">
                                    <div>
                                        <div>-</div>
                                    </div>
                                </div>
                                
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-sub">
                        <div style="display: none;"></div>
                        <div class="block first-block block-products " id="block-products-39569" rel="39569">
                            <div class="block-head">
                                <div class="head-inner">
                                    <h2 class="title">联系我们</h2>
                                </div>
                            </div>
                            <div class="main-wrap">
            <div id='htmlpages' class="block first-block block-article-view">
               <div class="block-content clearfix">
                <div class="article-content clearfix"> <span style="font-size:10pt;">中国西梅科技有限公司<br />
                  北京总部：<br />
                  地址：北京市海淀区中园大厦10层<br />
                  邮编：&nbsp;100000&nbsp;<br />
                  电话：&nbsp;400-123-000&nbsp;010-1234567&nbsp;<br />
                  传真：&nbsp;010-1234567&nbsp;&nbsp;<br />
                  <br />
                  上海：<br />
                  地址：上海市西京路112号北园大厦<br />
                  邮编：320000<br />
                  电话：400-123-000&nbsp;&nbsp;021-1234567</span>&nbsp; </div>
              </div>
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
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
