<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    

    <title>全球汽车4月聚焦上海 新浪&quot;V车展&quot;报道启动 -  汽车汽配公司网站</title>
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
//添加论坛
function saysAdd(cars_id) {
    if("${empty sessionScope.client}"=="false"){
    	$("#form1").submit();
    }else {
        alert("请登录");
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
        <div class="banner-inner"><img src="bf/images/2821431100090202.jpg" alt=""></div>
      </div>
    </div>
    <div id="innerpg" class="bd-inner">
      <div class="clearfix  layout-innerpg">
        <div class="col-main">
          <div class="main-wrap">
            <div id="articles-list" class="block first-block">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">论坛内容</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                <div class="list-table">
                  <table class="data">
                    <tbody>
                        <c:forEach items="${saysList }" var="says">
                      <tr>
                        <td class="title">发表人：${says.client.client_name } 发表时间：<fmt:formatDate value="${says.says_date }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                      </tr>
                      <tr>
                          <td style="text-align: left;">留言内容：<br />
                            　　${says.says_message }
                          </td>
                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
                <div style="width: 100px" class="pager clearfix">
                  
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
          <div class="block first-block block-articles " id="block-articles-39561" rel="39561">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">发表论坛</h2>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="item-list">
              
                <ul class="clearfix">
                <form id="form1" action="bf/saysAddDo" method="post">
              <input type="hidden" value="${sessionScope.client.client_id }" name="fk_saysClient_id">
                  <li>发表内容：  <div class="enter">
                      <textarea style="width: 200px" id='field1' name='says_message' class="required  w15 v-length ajax-clear"  value='' rows='4'  style="width:300px" ></textarea>
                    </div></li>
                  <li> 
                    <div class="row row-submit clearfix">
                    <div class="buttons"> <span class="btnwrap"><span class="clr">.</span>
                      <button class="btn-inner" onclick="saysAdd()" type="button">提交</button>
                  </div>
 </li>
 </form>
                  <li><jsp:include page="../back/main/pages.jsp"></jsp:include></li>
                </ul>
                
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