<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>应用&lt;c:out&gt;</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="text/html;charset=UTF-8">
  </head>
  
  <body>
  escapeXml="false"<br>
    <c:out value="水平标记<hr>" escapeXml="false"></c:out>
    escapeXml="true"<br>
    <c:out value="水平标记<hr>" escapeXml="true"></c:out>
    <hr>
    <ul>
     <li>定义request范围内变量username</li>
       <br>
       <c:set var="username" value="明日科技" scope="request"/>
       <c:out value="username的值为:${username }"/>
    <c:catch var="error">
     <li>设置UserInfo对象的name属性</li>
       <jsp:useBean class="javaBean.UserInfo" id="userInfo"/>
       <c:set target="${userInfo}" property="name">wgh</c:set>
       <br>
       <c:out value="${userInfo }"></c:out>
       <c:out value="UserInfo.name:${userInfo.name }"/>
     <li>移除request范围内的变量username</li>
     <c:remove var="username" scope="request"/>
     username:<c:out value="${username}" default="null" />
    </c:catch>
    <c:out value="${error}"/>
    </ul>
  </body>
</html>
