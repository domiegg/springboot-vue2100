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
        <div class="banner-inner"><img src="bf/style/images/banner-2.jpg" alt="" /></div>
      </div>
    </div>
    <div id="innerpg" class="bd-inner">
      <div class="clearfix  layout-innerpg">
        <div class="col-main">
          <div class="main-wrap">
            <div id='htmlpages' class="block first-block block-article-view">
              <div class="block-head">
                <div class="head-inner">
                  <h1 class="title">公司介绍</h1>
                </div>
              </div>
              <div class="block-content clearfix">
                <div class="article-content clearfix"> <span style="font-size:10pt;"><img src=images/2223182485093411.jpg alt=""  width="122" height="145" align="left" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国XXXX系统开发有限公司是一家致力于职业教育信息化解决方案的专业公司，产品涉及教育管理、教学应用、教学服务等多个领域，公司成立于1996年，注册资本1000万港币，目前已在香港上市。公司已通过软件企业、高新技术企业以及ISO9001：2000标准系统集成和软件设计、开发的质量管理体系认证，并被评为“明星软件企业”。&nbsp;&nbsp;&nbsp;&nbsp;公司在北京，广州，武汉，济南，成都等地设有多家办事处，并在全国20多个省市拥有近100所职业院校用户，公司现有数十名职业教育专家，及近100名软件研发和管理人员，其中具有大学本科、硕士以上学历和中、高级专业技术职称的占70%以上。&nbsp;&nbsp;&nbsp;&nbsp;中国XXXX系统开发有限公司成立至今，始终坚持自主研究和开发，承担了多项教育部、上海市及国家863软件开发项目，目前已成功研制“教委职业教育数据综合管理系统”、&nbsp;“学校综合管理系统”、“学分制管理系统”、“学生收费系统”、“实训中心管理系统”“汽车仿真系列教学软件”、“国际商务系列教学软件”等各类面向职业教育管理和应用的系列产品，并推出了数字化校园、区域学分制、省市教委信息管理、国际商务虚拟实验室和数字化汽车实训中心等一系列综合解决方案，公司自主开发的产品多次获得国家教育部和上海市政府颁发的“优秀软件奖”。&nbsp;&nbsp;&nbsp;&nbsp;<br />
                  &nbsp;&nbsp;&nbsp;&nbsp;中国XXXX系统开发有限公司在注重产品和项目质量的同时，充分意识到高质量的项目实施和客户服务的重要性、坚持以一流技术为起点，以质量和信誉为生命，秉承求实、创新、求精、满意的服务宗旨，对工作勤勤恳恳，对技术精益求精，对产品严格把关，对项目科学管理，对客户认真负责。&nbsp;&nbsp;&nbsp;&nbsp;<br />
                  &nbsp;&nbsp;&nbsp;&nbsp;公司将一直致力于为用户提供最优秀的软件和最完善的服务，发展成为职业教育软件行业中的龙头企业公司宗旨&nbsp;：&nbsp;让客户挣钱是我们的心愿！经营理念：诚信、守诺。</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
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
