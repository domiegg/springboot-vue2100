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
    

    <title>H+ 后台主题UI框架 - 空白页</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
    <link rel="stylesheet" href="videos/css/Dvideo.css">
    <link rel="stylesheet" href="videos/font-icon/style.css">
    <link rel="shortcut icon" href="favicon.ico"> <link href="back/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="back/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <link href="back/css/animate.min.css" rel="stylesheet">
    <link href="back/css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">
    <script type="text/javascript" src="back/js/jquery.js"></script>
<script type="text/javascript" src="back/artDialog/dist/dialog-plus.js"></script>
<link href="back/artDialog/css/ui-dialog.css" rel="stylesheet"
    type="text/css" />
	<script>
	function closes() {
		var dialog = top.dialog.get(window);//获取当前模态窗口
		dialog.close();
		dialog.remove();
		return false;
	}
</script>

</head>

<body class="gray-bg">
    <div   class="row wrapper border-bottom white-bg page-heading">
        <div  class="col-sm-4">
            <h2>信息页面</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="index.html">主页</a>
                </li>
                <li>
                    <strong>信息</strong>
                </li>
            </ol>
        </div>
    </div>

    <div style="overflow: scroll;height: 500px" class="wrapper wrapper-content">
        <div class="row">
        <div id="testVideo"></div>
        <div class="error-desc">
            <br/><input type="button" onclick="closes()" value="关闭窗口" class="btn btn-outline btn-danger">
        </div>
        </div>
    </div>
    <script src="back/js/jquery.min.js?v=2.1.4"></script>
    <script src="back/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="back/js/content.min.js?v=1.0.0"></script>
    <script type="back/text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
<script src="videos/js/Dvideo.js"></script>
<script>
    // window.onload = function () {
        var videoWrap = document.getElementById('testVideo')
        var fullScreen = document.getElementById('getFullScreen')
        var video = new Dvideo ({
            ele: '#testVideo',
            title: '车辆视频',
            nextVideoExtend: function () {
                alert('您点击了下一页')
            },
            showNext: true,
            width: '580px',
            height: '292px',
            src: '/upload/${cars_vi}',
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
