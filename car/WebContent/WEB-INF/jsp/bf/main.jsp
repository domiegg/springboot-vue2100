<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	pageContext.setAttribute("path", path);
	pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML>
<html>
	<head>

		<base href="${basePath}">
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>汽车汽配公司网站</title>
<meta content=" " name="keywords" />
<meta content="" name="description" />
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
     var i = 0;
    function a() {
    	
    	if(i==0){
            $("#a").html("<a href='bf/carsLoad?cars_id=${carsNumList[0].cars_id}'><img height='420px'  id='sitelogo' class='ifixpng' src='/upload/${carsNumList[0].cars_pho}'/></a>");
        }
        if(i==1){
            $("#a").html("<a href='bf/carsLoad?cars_id=${carsNumList[1].cars_id}'><img height='420px' id='sitelogo' class='ifixpng' src='/upload/${carsNumList[1].cars_pho}'/></a>");
        }
        if(i==2){
            $("#a").html("<a href='bf/carsLoad?cars_id=${carsNumList[2].cars_id}'><img height='420px' id='sitelogo' class='ifixpng' src='/upload/${carsNumList[2].cars_pho}'/></a>");
            i=-1;
        }
        i++;
	}
    $(function () {
		setInterval(a, 2000);
	})	  
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
        <div class="language-inner"><c:if test="${empty sessionScope.client }"><a href="javascript:void(0)" onclick="login()">登录</a> | <a href="javascript:void(0)" onclick="reg()">注册</a></c:if><c:if test="${!(empty sessionScope.client) }">欢迎${sessionScope.client.client_name } | <a href="javascript:void(0)" onclick="loginOut()">退出</a></c:if>  </div><br /><br />
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
        <div class="banner-inner"><div id="a"><a href="bf/carsLoad?cars_id=${carsNumList[2].cars_id}"><img height="420px" id="sitelogo" class="ifixpng" src="/upload/${carsNumList[2].cars_pho}"/></a></div></div>
      </div>
    </div>
    <div id="homepg" class="bd-inner">
      <div class="clearfix  layout-home  three-cols">
        <div class="col-main">
          <div class="main-wrap">
            <div style="display:none;"></div>
            <div class="block first-block block-products " id="block-products-39738" rel="39738">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">最新产品</h2>
                  <div class="links"><a class="more" href="bf/carsList">更多</a></div>
                </div>
              </div>
              <div class="block-content clearfix">
                <ul class="list-gallery clearfix">
                    <c:forEach items="${carsTimeList }" var="cars">
                      <li>
                        <div class="thumb"><a href="bf/carsLoad?cars_id=${cars.cars_id }" title="雪铁龙C5 2011款 2.3"><img width="200px" height="100px" src="/upload/${cars.cars_pho }" ></a></div>
                        <div class="des">
                          <p class="default"><a href="bf/carsLoad?cars_id=${cars.cars_id }">${cars.cars_name }</a></p>
                          <p class="default catalog">分类:<a href="bf/carsLoad?cars_id=${cars.cars_id }">${cars.cars_zi }</a></p>
                        </div>
                     </li>
                 </c:forEach>
                </ul>
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
          <div class="block first-block block-articles " id="block-articles-39587" rel="39587">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">产品搜索</h2>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="item-list">
                  <form target="_self" method="post" action="bf/carsList" >
                        <ul class="clearfix">
                          <li> 名　　称：<input id="field2" name="cars_name" class="text w7 ajax-clear" maxlength="50" type="text" value="${cars.cars_name }" style="width:120px"></li>
                          <li> 档　　次：<select style="width: 122px;" id="field4" name="cars_grade">
                                    <option value="">请选择档次</option>
                                    <option <c:if test="${cars.cars_grade eq 1 }">selected="selected"</c:if> value="1">高档</option>
                                    <option <c:if test="${cars.cars_grade eq 2 }">selected="selected"</c:if> value="2">中档</option>
                                    <option <c:if test="${cars.cars_grade eq 3 }">selected="selected"</c:if> value="3">大众化</option>
                                </select>
                                </li>
                          <li> 等　　级：<select style="width: 122px;" name="cars_zi">
                                        <option value="">请选择等级</option>
                                        <option <c:if test="${cars.cars_zi eq 'A' }">selected="selected"</c:if> value="A">A</option>
                                        <option <c:if test="${cars.cars_zi eq 'B' }">selected="selected"</c:if> value="B">B</option>
                                        <option <c:if test="${cars.cars_zi eq 'C' }">selected="selected"</c:if> value="C">C</option>
                                    </select></li>
                          <li> 最小价格：<input id="field2" name="minPrice" class="text w7 ajax-clear" maxlength="50" type="text" value="${minPrice}" style="width:120px"></li>
                          <li> 最大价格：<input id="field2" name="maxPrice" class="text w7 ajax-clear" maxlength="50" type="text" value="${minPrice}" style="width:120px"></li>
                          <li><button class="btn-inner" type="submit">查询</button></li>
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
        <div class="col-extra">
          <div style="display:none;"></div>
          <div class="block first-block block-diy " id="block-diy-39739" rel="39739">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">联系我们</h2>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="content-text">电话：0577-12345678<br />
                传真：0577-12345678<br />
                邮箱：<a href="mailto:test@163.com">test@163.com</a><br />
                地址：温州鹿城区<br />
                服务热线：4000-123-456</div>
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