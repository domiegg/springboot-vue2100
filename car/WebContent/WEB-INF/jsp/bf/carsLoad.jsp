<%@page import="java.util.List"%>
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
function reAddDo(cars_id) {
	if("${empty sessionScope.client}"=="false"){
		$.post(
                "bf/reAddDo",
                {fk_reCars_id:cars_id,fk_reClient_id:'${sessionScope.client.client_id}'},
                function (data) {
                    
                },
                "json"
            );
            alert("预约成功，等待管理员与你联系！！");
	}else {
		alert("请登录");
	}
}
//预约
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
function addOrder(cars_id,cars_price,cars_name) {
	
    if("${empty sessionScope.client}"=="false"){
    	var client_id = "${sessionScope.client.client_id }";
    	var sc_num = parseInt($("#product_num").val());
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
                    <div class="banner-inner">
                        <div style="width: 100%;">
                            <img style="width: 210px; float: left;" height="292px" width="215px" src="/upload/${cars.cars_pho }" alt="" rel="270,270" />
                            <div style="float: left;" id="testVideo"></div>
                            <img style="width: 210px; float: left;" height="292px" width="215px" src="/upload/${cars.cars_pho }" alt="" rel="270,270" />
                        </div>
                    </div>
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
                                        <h2 class="title"><span>产品中心</span></h2>
                                        <div class="links">
                                            <a href="bf/carsList">返回</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="block-content clearfix">
                                    <div id="j-product-view" class="layout-product clearfix">
                                        <div class="col-main">
                                            <div class="main-wrap info">
                                                <h1>${cars.cars_name }</h1>
                                                <div class="details-1">
                                                    <dl class="clearfix price">
                                                        <dt>价格：</dt>
                                                        <dd>
                                                            <strong class="orange">
                                                                ￥
                                                                <span class="" id="market_price">${cars.cars_price }</span>
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
                                                                    <input type="text" class="text-box" id="product_num" value="1" j_max="1" autocomplete="off" />
                                                                </span>
                                                                <span class="handler">
                                                                    <a class="up" href="javascript:void(0);" title="增加">增加</a>
                                                                </span>
                                                            </div>
                                                            <span id="a" class="total">
                                                                库存： <label id="p_num">100</label> 件
                                                            </span>
                                                        </dd>
                                                    </dl>
                                                    <div class="operate-btn">
                                                        <a id="j-btn-buy"  class="btn-buy" href="javascript:void(0);" onclick="addOrder(${cars.cars_id},${cars.cars_price},'${cars.cars_name }');" title="立即购买">立即购买</a> <a id="j-btn-add" class="btn-add" href="javascript:void(0);"
                                                            onclick="addSc(${cars.cars_id});" j_rel="#17116" title="加入购物车">加入购物车</a>
                                                            <a id="j-btn-buy"  class="btn-buy" href="javascript:void(0);" onclick="reAddDo(${cars.cars_id});" title="立即购买">预约看车</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sub">
                                            <div id="product-gallery">
                                                <div class="wrap">
                                                    <a id="product-show" class="picholder" href="/upload/${cars.cars_pho }" target="_blank"><img src="/upload/${cars.cars_pho }" alt="" rel="270,270" /></a>
                                                </div>
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
                            <div id='product-block' class="block block-nohead">
                                <div class="block-content clearfix">
                                    <div class="product-info">
                                        <div class="tab-menu">
                                            <ul id="j-proview-tag" class="clearfix tab">
                                                <li>
                                                    <a class="current" title="详情介绍" href="javascript:void(0);"><span>详情介绍</span></a>
                                                </li>
                                                <li>
                                                    <a class="last" j_load="/products/products_sold/17116" title="成交记录" href="javascript:void(0);"><span></span></a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="content" id="j-proview-loader">
                                            <div id="j-proview-loader-0">
                                                <div class="detail">
                                                    <div class="writing">
                                                        <i>具体信息</i>
                                                        &nbsp;
                                                        <br />
                                                        <ul>
                                                            <li>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="205"><br />　　${cars.cars_message }</td>
                                                                        <td>-</td>
                                                                    </tr>
                                                                </table>
                                                            </li>
                                                        </ul>
                                                        <div id="block-comments" class="block block-comments" rel="products">
                                                            <div class="block-head">
                                                                <div class="head-inner">
                                                                    <h2 class="title">评价</h2>
                                                                </div>
                                                            </div>
                                                            <div class="block-content clearfix">
                                                            
                                                                    <div class="row clearfix">
                                                                        <c:forEach items="${grList }" var="gr">
                                                                            <div  style="height: 80px" class="enter">
                                                                                <div style="float: left;"><img width="50px"  src="/upload/${gr.gr_pho }"></div>
                                                                                <div style="float: left;width: 600px">
                                                                                                                                                                                 姓　　名：${gr.client.client_name }<br />
                                                                                                                                                                                 帐　　号：${gr.client.client_account }<br />
                                                                                                                                                                                 等　　级：<c:if test="${gr.gr_grade eq 1 }">好评</c:if><c:if test="${gr.gr_grade eq 2 }">中评</c:if><c:if test="${gr.gr_grade eq 3 }">差评</c:if><br />
                                                                                                                                                                                 评价信息：<br />　　${gr.gr_message }
                                                                                </div>
                                                                            </div>
                                                                         </c:forEach>
                                                                    </div>
                                                                   
                                                            </div>
                                                        </div>
                                                        <!-- <div id="block-comments" class="block block-comments" rel="products">
                                                            <div class="block-head">
                                                                <div class="head-inner">
                                                                    <h2 class="title">评论</h2>
                                                                </div>
                                                            </div>
                                                            <div class="block-content clearfix">
                                                                <form id="form-comment" class="form form-validate form-ajax form-comment" action="/products/add" method="post">
                                                                    <div class="row clearfix">
                                                                        <div class="label">
                                                                            <span class="required">*</span>
                                                                            <label>昵称：</label>
                                                                        </div>
                                                                        <div class="enter">
                                                                            <input class="text required w5" name="data[field0]" id='field0' type="text" maxlength="12" />
                                                                            <input type="hidden" name="data[field2]" value="17116" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row clearfix">
                                                                        <div class="label">
                                                                            <span class="required">*</span>
                                                                            <label>内容：</label>
                                                                        </div>
                                                                        <div class="enter">
                                                                            <textarea class="required w15 v-length ajax-clear" name="data[field1]" id='field1' rows="4" rec="8,500"></textarea>
                                                                        </div>
                                                                        <span class="tips" title="8-500字以内">8-500字以内</span>
                                                                    </div>
                                                                    <div class="row clearfix">
                                                                        <div class="label">
                                                                            <span class="required">*</span>
                                                                            <label>验证码：</label>
                                                                        </div>
                                                                        <div class="enter">
                                                                            <input class="text required w3 v-captcha" id="captcha" name="data[code]" autocomplete="off" type="text" />
                                                                        </div>
                                                                        <img id="imgCaptcha" class="img-captcha" src="bf/images/0.png?0.49962600 1398339094" rel="images/0.png?0.49963100 1398339094" alt="点击刷新验证码" title="点击刷新验证码" />
                                                                    </div>
                                                                    <div class="row row-submit clearfix">
                                                                        <div class="buttons">
                                                                            <span class="btnwrap">
                                                                                <span class="clr">.</span>
                                                                                <button class="btn-inner" type="submit">提交</button>
                                                                            </span>
                                                                            <span class="btnwrap">
                                                                                <span class="clr">.</span>
                                                                                <button class="btn-inner" type="reset">重设</button>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="block-foot">
                                                                <div>
                                                                    <div>-</div>
                                                                </div>
                                                            </div>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="j-proview-loader-1" class="hide">
                                                <div class="loading">载入中...</div>
                                            </div>
                                            <div id="j-proview-loader-2" class="hide">
                                                <div class="loading">载入中...</div>
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
                    <div class="col-sub">
                        <div style="display: none;"></div>
                        <div class="block first-block block-products " id="block-products-39569" rel="39569">
                            <div class="block-head">
                                <div class="head-inner">
                                    <h2 class="title">产品搜索</h2>
                                </div>
                            </div>
                            <div class="block-content clearfix">
                                <div class="item-list">
                                    <form target="_self" method="post" action="bf/carsList">
                                        <ul class="clearfix">
                                            <li>
                                                名　　 称：
                                                <input id="field2" name="cars_name" class="text w7 ajax-clear" maxlength="50" type="text" value="${cars.cars_name }" style="width: 120px">
                                            </li>
                                            <li>
                                                档 　　次：<select style="width: 122px;" id="field4" name="cars_grade">
                                                    <option value="">请选择档次</option>
                                                    <option <c:if test="${cars.cars_grade eq 1 }">selected="selected"</c:if> value="1">高档</option>
                                                    <option <c:if test="${cars.cars_grade eq 2 }">selected="selected"</c:if> value="2">中档</option>
                                                    <option <c:if test="${cars.cars_grade eq 3 }">selected="selected"</c:if> value="3">大众化</option>
                                                </select>
                                            </li>
                                            <li>
                                                等 　　级：<select style="width: 122px;" name="cars_zi">
                                                    <option value="">请选择等级</option>
                                                    <option <c:if test="${cars.cars_zi eq 'A' }">selected="selected"</c:if> value="A">A</option>
                                                    <option <c:if test="${cars.cars_zi eq 'B' }">selected="selected"</c:if> value="B">B</option>
                                                    <option <c:if test="${cars.cars_zi eq 'C' }">selected="selected"</c:if> value="C">C</option>
                                                </select>
                                            </li>
                                            <li>
                                                最小价格：
                                                <input id="field2" name="minPrice" class="text w7 ajax-clear" maxlength="50" type="text" value="${minPrice}" style="width: 120px">
                                            </li>
                                            <li>
                                                最大价格：
                                                <input id="field2" name="maxPrice" class="text w7 ajax-clear" maxlength="50" type="text" value="${minPrice}" style="width: 120px">
                                            </li>
                                            <li>
                                                <button class="btn-inner" type="submit">查询</button>
                                            </li>
                                        </ul>
                                    </form>
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
<script src="videos/js/Dvideo.js"></script>
<script>
    // window.onload = function () {
        var videoWrap = document.getElementById('testVideo')
        var fullScreen = document.getElementById('getFullScreen')
        var video = new Dvideo ({
            ele: '#testVideo',
            title: 'Pneumatic Tokyo - EnV',
            nextVideoExtend: function () {
                alert('您点击了下一页')
            },
            showNext: true,
            width: '580px',
            height: '292px',
            src: '/upload/${cars.cars_vi}',
            autoplay: true,
            setVideoDefinition: function (type, e, current) {
                if (type === '0') {
                    alert('你点击了标清')
                    // video.setVideoInfo('這是標清','这里填写视频的标清地址',current)
                }
                if (type === '1') {
                    alert('你点击了标清')
                    // video.setVideoInfo('這是標清','这里填写视频的高清地址',current)
                }
                if (type === '2') {
                    alert('你点击了标清')
                    // video.setVideoInfo('這是標清','这里填写视频的超清地址',current)
                }
                video.showLoading(false)

                // setTimeout(function () {
                //  video.videoEle.currentTime = current
                //  video.videoPlay()
                //  video.showLoading(false)
                // }, 3000)
            },
        })

</script>
</html>
