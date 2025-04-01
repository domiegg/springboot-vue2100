<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<ul id="menuSitenav" class="clearfix">
  <li class="first-item"> <a href="bf/main" class="home"><span>首页</span></a> </li>
  <li > <a href="bf/carsList" target="_self"><span>名车预览</span></a> </li>
  <li > <a href="bf/com" target="_self"><span>公司介绍</span></a> </li>
  <li > <a href="bf/saysList" target="_self"><span>用户论坛</span></a> </li>
  <c:if test="${!(empty sessionScope.client) }">
    <li > <a href="bf/scList?fk_scClient_id=${sessionScope.client.client_id }" target="_self"><span>购物车</span></a> </li>
    <li > <a href="bf/clientLoad" target="_self"><span>个人中心</span></a> </li>
    <li > <a href="bf/contAdd" target="_self"><span>联系我们</span></a> </li> 
  </c:if>
  <!-- 
  <li > <a href="新闻列表页news.html" target="_self"><span>新闻中心</span></a> </li>
  
  <li > <a href="留言页guestbook.html" target="_self"><span>在线咨询订购</span></a> </li>
  <li > <a href="联系我们contact.html" target="_self"><span>联系我们</span></a> </li>
  <li  class="last-item"> <a href="招聘列表页job.html" target="_self"><span>加入我们</span></a> </li> -->
</ul>