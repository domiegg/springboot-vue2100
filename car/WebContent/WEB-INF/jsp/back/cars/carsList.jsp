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
        function carsMdi(cars_id) {
            var d = top.dialog({
                title: '修改用户',
                url:'back/carsLoad?cars_id='+cars_id,
                width:'600',
                height:'800',
                onclose:function(){
                    window.location.reload();
                }
            });
            d.showModal();
        }
        function carsVideo(cars_vi) {
            var d = top.dialog({
                title: '查看视频',
                url:'back/carsVideo?cars_vi='+cars_vi,
                width:'600',
                height:'500',
                onclose:function(){
                    window.location.reload();
                }
            });
            d.showModal();
        }
        function carsDel(cars_id) {
            var d = top.dialog({
                title: '删除用户',
                url:'back/carsDel?cars_id='+cars_id,
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
                           <form target="_self" action="back/carsList" >
                                <input type="text" value="${cars.cars_name }" placeholder="请输入车名" name="cars_name" style="float: left;width:150px;" class="form-control">
                                <input type="text" value="${minPrice }" placeholder="请输入最小价格" name="minPrice" style="float: left;width:150px;" class="form-control">
                                <input type="text" value="${maxPrice }" placeholder="请输入最大价格" name="maxPrice" style="float: left;width:150px;" class="form-control">
                                <select style="float: left;width:150px;" class="form-control m-b" name="cars_grade">
                                    <option value="">请选择档次</option>
                                    <option <c:if test="${cars.cars_grade eq 1 }">selected="selected"</c:if> value="1">高档</option>
                                    <option <c:if test="${cars.cars_grade eq 2 }">selected="selected"</c:if> value="2">中档</option>
                                    <option <c:if test="${cars.cars_grade eq 3 }">selected="selected"</c:if> value="3">大众化</option>
                                </select>
                                <select style="float: left;width:150px;" class="form-control m-b" name="cars_zi">
                                        <option value="">请选择等级</option>
                                        <option <c:if test="${cars.cars_zi eq 'A' }">selected="selected"</c:if> value="A">A</option>
                                        <option <c:if test="${cars.cars_zi eq 'B' }">selected="selected"</c:if> value="B">B</option>
                                        <option <c:if test="${cars.cars_zi eq 'C' }">selected="selected"</c:if> value="C">C</option>
                                    </select>
                                &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-outline btn-success" style="float: left;width:80px;" value="查询">
                            </form> 
                        </div>
                    </div>
                    <div class="ibox-content">

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>图片</th>
                                    <th>视频</th>
                                    <th>车名</th>
                                    <th>价格</th>
                                    <th>档次</th>
                                    <th>等级</th>
                                    <th>销量</th>
                                    <th>信息</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carsList }" var="cars">
                                <tr>
                                    <td><input type="checkbox" name="cars_id" value="${cars.cars_id }" /></td>
                                    <td><img width="100px" height="100px" src="/upload/${cars.cars_pho }"/></td>
                                    <td><input type="button" onclick="carsVideo('${cars.cars_vi}')" value="查看视频" class="btn btn-outline btn-info"></td>
                                    <td>${cars.cars_name }</td>
                                    <td>${cars.cars_price }</td>
                                    <td>${cars.cars_grade eq 1 ? '高档' : cars.cars_grade eq 2 ? '中档':'大众化' }</td>
                                    <td>${cars.cars_zi}</td>
                                    <td>${cars.cars_num}</td>
                                    <td>${cars.cars_message}</td>
                                    <td class="text-navy"><input type="button" onclick="carsMdi(${cars.cars_id})" value="修改" class="btn btn-outline btn-info"> <input type="button" value="删除" onclick="carsDel(${cars.cars_id})" class="btn btn-outline btn-danger"></td>
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