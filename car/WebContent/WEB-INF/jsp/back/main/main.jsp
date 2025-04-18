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
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>H+ 后台主题UI框架 - 主页</title>

    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico">
    <link href="back/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="back/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="back/css/animate.min.css" rel="stylesheet">
    <link href="back/css/style.min.css?v=4.0.0" rel="stylesheet">
    <script type="text/javascript" src="back/js/jquery.js"></script>
<script type="text/javascript" src="back/artDialog/dist/dialog-plus.js"></script>
<link href="back/artDialog/css/ui-dialog.css" rel="stylesheet"
    type="text/css" />
    <script type="text/javascript">
        function iconMdi() {
            var d = top.dialog({
                title: '修改头像',
                url:'back/userIcon',
                width:'600',
                onclose:function (){
                    window.location.reload();
                }
            });
            d.showModal();
        }
        function userMdi(user_id) {
            var d = top.dialog({
                title: '修改用户',
                url:'back/userLoad?user_id='+user_id,
                width:'600',
                height:'800',
                onclose:function(){
                    window.location.reload();
                }
            });
            d.showModal();
        }
        function passwordMdi() {
            var d = top.dialog({
                title: '修改密码',
                url:'back/passwordMdi',
                width:'600',
                height:'500',
                onclose:function(){
                    window.location.href='back/login';
                }
            });
            d.showModal();
        }
    </script>
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span><img alt="image" width="80px" height="80px" class="img-circle" src="/upload/${sessionScope.user.user_logo }" /></span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">${sessionScope.user.user_name }</strong></span>
                                <span class="text-muted text-xs block">管理员<b class="caret"></b></span>
                                </span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a class="J_menuItem" href="javascript:void(0)" onclick="iconMdi()">修改头像</a>
                                </li>
                                <li><a class="J_menuItem" href="javascript:void(0)" onclick="userMdi(${sessionScope.user.user_id })">个人资料</a>
                                <li><a class="J_menuItem" href="javascript:void(0)" onclick="passwordMdi()">修改密码</a>
                                </li>
                                
                            </ul>
                        </div>
                        <div class="logo-element">H+
                        </div>
                    </li>
                        <li>
                            <a href="#"><i class="fa fa-table"></i> <span class="nav-label">管理员管理</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                            <li><a class="J_menuItem" href="back/userList">管理员列表</a></li>
                                            <li><a class="J_menuItem" href="back/userAdd">添加管理员</a></li>
                                </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table"></i> <span class="nav-label">客户管理</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                            <li><a class="J_menuItem" href="back/clientList">客户列表</a></li>
                                            <li><a class="J_menuItem" href="back/clientAdd">添加客户</a></li>
                                </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table"></i> <span class="nav-label">车辆管理</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                            <li><a class="J_menuItem" href="back/carsList">车辆列表</a></li>
                                            <li><a class="J_menuItem" href="back/carsAdd">添加车辆</a></li>
                                </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table"></i> <span class="nav-label">预约管理</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                            <li><a class="J_menuItem" href="back/reList">预约列表</a></li>
                                </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table"></i> <span class="nav-label">订单管理</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                            <li><a class="J_menuItem" href="back/ordersList">订单列表</a></li>
                                </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table"></i> <span class="nav-label">留言管理</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                            <li><a class="J_menuItem" href="back/contList">留言列表</a></li>
                                </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table"></i> <span class="nav-label">论坛管理</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                            <li><a class="J_menuItem" href="back/saysList">论坛列表</a></li>
                                </ul>
                        </li>
                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><!-- <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a> -->
                       <!--  <form role="search" class="navbar-form-custom" method="post" action="search_results.html"> -->
                            <div class="form-group">
                                <!-- <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search"> -->
                            </div>
                        <!-- </form> -->
                    </div>
                    
                </nav>
            </div>
            <div class="row content-tabs">
                <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
                </button>
                <nav class="page-tabs J_menuTabs">
                    <div class="page-tabs-content">
                        <a href="javascript:;" class="active J_menuTab" data-id="index_v1.html">首页</a>
                    </div>
                </nav>
                <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
                </button>
                <div class="btn-group roll-nav roll-right">
                    <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                    </button>
                    <ul role="menu" class="dropdown-menu dropdown-menu-right">
                        <li class="J_tabShowActive"><a>定位当前选项卡</a>
                        </li>
                        <li class="divider"></li>
                        <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                        </li>
                        <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="back/index" frameborder="0" data-id="index_v2.html" seamless></iframe>
            </div>
            <div class="footer">
                <div class="pull-right">&copy; 2014-2015 <a href="http://www.zi-han.net/" target="_blank">zihan's blog</a>
                </div>
            </div>
        </div>
        <!--右侧部分结束-->
        <!--右侧边栏开始-->
        
        <!--右侧边栏结束-->
        <!--mini聊天窗口开始-->
        
        
    </div>
    <script src="back/js/jquery.min.js?v=2.1.4"></script>
    <script src="back/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="back/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="back/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="back/js/plugins/layer/layer.min.js"></script>
    <script src="back/js/hplus.min.js?v=4.0.0"></script>
    <script type="text/javascript" src="back/js/contabs.min.js"></script>
    <script src="back/js/plugins/pace/pace.min.js"></script>
</body>

</html>