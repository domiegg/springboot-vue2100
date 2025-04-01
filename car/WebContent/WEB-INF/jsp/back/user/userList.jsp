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
    

    <title>H+ 后台主题UI框架 - 基础表格</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="back/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="back/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="back/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="back/css/animate.min.css" rel="stylesheet">
    <link href="back/css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">
    <script type="text/javascript" src="back/js/jquery.js"></script>
<script type="text/javascript" src="back/artDialog/dist/dialog-plus.js"></script>
<link href="back/artDialog/css/ui-dialog.css" rel="stylesheet"
    type="text/css" />
    <script type="text/javascript">
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
        function userDel(user_id) {
            var d = top.dialog({
                title: '删除用户',
                url:'back/userDel?user_id='+user_id,
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

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">          
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <div class="ibox-tools">
                           <form target="_self" action="back/userList" >
                                <input type="text" value="${user.user_name }" placeholder="请输入用户名" name="user_name" style="float: left;width:120px;" class="form-control">
                                <input type="text" value="${user.account }" placeholder="请输入账号" name="account" style="float: left;width:120px;" class="form-control">
                                &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-outline btn-success" style="float: left;width:80px;" value="查询">
                            </form>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>头像</th>
                                    <th>姓名</th>
                                    <th>账号</th>
                                    <th>身份证</th>
                                    <th>电话</th>
                                    <th>年龄</th>
                                    <th>性别</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${userList }" var="user">
                                <tr>
                                    <td><input type="checkbox" name="user_id" value="${user.user_id }" /></td>
                                    <td><img width="60px" height="60px" src="/upload/${user.user_logo }" /></span></td>
                                    <td>${user.user_name }</td>
                                    <td>${user.account }</td>
                                    <td>${user.user_card }</td>
                                    <td>${user.user_tel }</td>
                                    <td>${user.user_age }</td>
                                    <td>${user.user_sex eq 1 ? '男' : '女' }</td>
                                    <td>${user.delete_status eq 1 ? '在职' : '离职' }</td>
                                    <td class="text-navy"> <input type="button" value="删除" onclick="userDel(${user.user_id})" class="btn btn-outline btn-danger"></td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <jsp:include page="../main/pages.jsp"></jsp:include>
                </div>
            </div>
        </div>
        
    </div>
    <script src="back/js/jquery.min.js?v=2.1.4"></script>
    <script src="back/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="back/js/plugins/peity/jquery.peity.min.js"></script>
    <script src="back/js/content.min.js?v=1.0.0"></script>
    <script src="back/js/plugins/iCheck/icheck.min.js"></script>
    <script src="back/js/demo/peity-demo.min.js"></script>
    <script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>