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
    

    <title>CSS3网站用户登录设计代码 - 站长素材</title>
<link href="bfLogin/css/bootstrap.min.css" rel="stylesheet">
<link href="bfLogin/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="bfLogin/css/zzsc.css">
<script type="text/javascript" src="back/js/jquery.js"></script>
<script type="text/javascript" src="back/artDialog/dist/dialog-plus.js"></script>
<link href="back/artDialog/css/ui-dialog.css" rel="stylesheet"
    type="text/css" />
<style type="text/css">
    .form-bg{
        padding: 2em 0;
    }
    .form-horizontal{
        background: #fff;
        padding-bottom: 40px;
        border-radius: 15px;
        text-align: center;
    }
    .form-horizontal .heading{
        display: block;
        font-size: 35px;
        font-weight: 700;
        padding: 35px 0;
        border-bottom: 1px solid #f0f0f0;
        margin-bottom: 30px;
    }
    .form-horizontal .form-group{
        padding: 0 40px;
        margin: 0 0 25px 0;
        position: relative;
    }
    .form-horizontal .form-control{
        background: #f0f0f0;
        border: none;
        border-radius: 20px;
        box-shadow: none;
        padding: 0 20px 0 45px;
        height: 40px;
        transition: all 0.3s ease 0s;
    }
    .form-horizontal .form-control:focus{
        background: #e0e0e0;
        box-shadow: none;
        outline: 0 none;
    }
    .form-horizontal .form-group i{
        position: absolute;
        top: 12px;
        left: 60px;
        font-size: 17px;
        color: #c8c8c8;
        transition : all 0.5s ease 0s;
    }
    .form-horizontal .form-control:focus + i{
        color: #00b4ef;
    }
    .form-horizontal .fa-question-circle{
        display: inline-block;
        position: absolute;
        top: 12px;
        right: 60px;
        font-size: 20px;
        color: #808080;
        transition: all 0.5s ease 0s;
    }
    .form-horizontal .fa-question-circle:hover{
        color: #000;
    }
    .form-horizontal .main-checkbox{
        float: left;
        width: 20px;
        height: 20px;
        background: #11a3fc;
        border-radius: 50%;
        position: relative;
        margin: 5px 0 0 5px;
        border: 1px solid #11a3fc;
    }
    .form-horizontal .main-checkbox label{
        width: 20px;
        height: 20px;
        position: absolute;
        top: 0;
        left: 0;
        cursor: pointer;
    }
    .form-horizontal .main-checkbox label:after{
        content: "";
        width: 10px;
        height: 5px;
        position: absolute;
        top: 5px;
        left: 4px;
        border: 3px solid #fff;
        border-top: none;
        border-right: none;
        background: transparent;
        opacity: 0;
        -webkit-transform: rotate(-45deg);
        transform: rotate(-45deg);
    }
    .form-horizontal .main-checkbox input[type=checkbox]{
        visibility: hidden;
    }
    .form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
        opacity: 1;
    }
    .form-horizontal .text{
        float: left;
        margin-left: 7px;
        line-height: 20px;
        padding-top: 5px;
        text-transform: capitalize;
    }
    .form-horizontal .btn{
        float: right;
        font-size: 14px;
        color: #fff;
        background: #00b4ef;
        border-radius: 30px;
        padding: 10px 25px;
        border: none;
        text-transform: capitalize;
        transition: all 0.5s ease 0s;
    }
    @media only screen and (max-width: 479px){
        .form-horizontal .form-group{
            padding: 0 25px;
        }
        .form-horizontal .form-group i{
            left: 45px;
        }
        .form-horizontal .btn{
            padding: 10px 20px;
        }
    }
</style>
</head>
<body>
<div class="demo form-bg">
    <div class="container">
        <div class="row">
            <div style="height: 490px;overflow: scroll;" class="col-md-offset-3 col-md-6">
                <form class="form-horizontal" action="bf/ordersAddDo" method="post">
                <input type="hidden" value="${orders.fk_orClient_id }" name="fk_orClient_id">
                <input type="hidden" value="${orders.fk_orCars_id }" name="fk_orCars_id">
                    <span class="heading">确认订单</span>
                   订单号
                    <div class="form-group"> 
                        <input type="text" readonly="readonly" class="form-control" name="or_code" id="inputEmail3" value="${orders.or_code }">
                    </div>
                    车辆名称
                    <div class="form-group">
                        <input type="text" readonly="readonly" class="form-control" name="cars_name" id="inputEmail3" value="${cars_name }">
                    </div>
                    数量
                    <div class="form-group">
                        <input type="text" readonly="readonly" class="form-control" name="or_num" id="inputEmail3" value="${orders.or_num }">
                    </div>
                    总价
                    <div class="form-group">
                        <input type="text" readonly="readonly" class="form-control" name="or_money" id="inputEmail3" value="${orders.or_money }">
                    </div>
                    地址
                    <div class="form-group">
                        <input type="text" class="form-control" name="or_address" placeholder="收货地址" id="inputEmail3">
                    </div>
                     支付密码
                     <div class="form-group help">
                        <input type="password" class="form-control" name="client_paypassword" id="inputPassword3" placeholder="支付密码">
                        <i class="fa fa-lock"></i>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-default">确认</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>