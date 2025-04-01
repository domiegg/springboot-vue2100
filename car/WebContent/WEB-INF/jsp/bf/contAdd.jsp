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
    

    <title>留言系统 -  汽车汽配公司网站</title>
<meta content="留言系统 " name="keywords" />
<meta content="默认表单," name="description" />
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
        <div class="banner-inner"><img src="bf/style/images/banner-2.jpg" alt="" /></div>
      </div>
    </div>
    <div id="innerpg" class="bd-inner">
      <div class="clearfix  layout-innerpg">
        <div class="col-main">
          <div class="main-wrap">
            <div id="block-comments" class="block first-comment block-comments" rel="books">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">说出你对本公司或本系统的看法</h2>
                </div>
              </div>
              <div id='books-list' class="block-content clearfix">
                <form  action="back/contAddDo" method="post">
                  <input type="hidden" name="fk_contClient_id" value="${sessionScope.client.client_id }">
                  <div class="row clearfix">
                    <div class="label"> <span class="required">*</span>
                      <label>留言：</label>
                    </div>
                    <div class="enter">
                      <textarea id='field1' name='cont_message' class="required  w15 v-length ajax-clear"  value='' rows='4'  style="width:300px" ></textarea>
                    </div>
                      <button class="btn-inner" type="submit">提交</button>
                  </div>
                </form>
                <ol id="list-comments" class="commentslist clearfix">
                </ol>
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
          <div class="block first-block block-products " id="block-products-39741" rel="39741">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">产品分类</h2>
                <div class="links"><a class="more" href="产品列表页products.html">更多</a></div>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="item-list">
                <ul class="clearfix">
                  <li> <a title="越野型" href="javascript:void(0)">越野型</a> </li>
                  <li> <a title="实用版" href="javascript:void(0)">实用版</a> </li>
                  <li> <a title="经典版" href="javascript:void(0)">经典版</a> </li>
                  <li> <a title="时尚版" href="javascript:void(0)">时尚版</a> </li>
                </ul>
              </div>
            </div>
            <div class="block-foot">
              <div>
                <div>-</div>
              </div>
            </div>
          </div>
          <div class="block block-guestbook last-block block-books " id="block-books-39742" rel="39742">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">最新留言</h2>
              </div>
            </div>
            <div class="block-content clearfix">
              <ul   class="item-list clearfix">
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