<%@ page language="java" import="java.util.*" import="java.sql.*" import="jdbc.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看物品信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <script type="text/javascript" language="javascript">
   function check(f){
     with(f){
       if(count.value==""){
       alert("数量不可以为空！");
       count.focus();
       return false;
       }
     }
   }
   function check1(f){
     confirm();
   }
   function check3(f){
	  with(f){
	   if(name.value==""){
	     alert("名称不可以为空!");
	     name.focus();
	     return false;
	   }
	   if(price.value==""){
	     alert("价格不可以为空!");
	     price.focus();
	     return false;
	   }
	   if(num.value==""){
	     alert("数量不可以为空!");
	     num.focus();
	     return false;
	   }
	   if(unit.value==""){
	     alert("单元不可以为空!");
	     unit.focus();
	     return false;
	   }
	  }
	 }
  </script>
  
  <body>
   <table align="center" border="1" >
   <tr>
     <td align="center" colspan="7">
     <h2>所有商品信息</h2>
     </td>
   </tr>
   <tr align="center">
    <td>ID</td>
    <td>商品名称</td>
    <td>价格</td>
    <td>数量</td>
    <td>单位</td>
    <td>修改数量</td>
    <td>删除</td>
   </tr>
     <%
     List<Product> list=(List<Product>)request.getAttribute("list");
     for(Product p:list){         
     %>
     <tr align="center">
     <td>0<%=p.getId() %></td>
     <td><%=p.getName() %></td>
     <td><%=p.getPrice() %></td>
     <td><%=p.getNum() %></td>
     <td><%=p.getUnit() %></td>
     <td><form action="UpdateServlet" name="form" method="post" onsubmit="return check(this);">
           <input type="hidden" name="id" value="<%=p.getId()%>">
           <input type="text" name="count" size="3">
           <input type="submit" value="修改">
         </form>
     </td>
     <td>
     <a href="DeleteServlet?id=<%=p.getId() %>"  onclick="return confirm('真的要删除么')">删除</a>
     </td>
    </tr>
     <%} %>
    <tr>
     <td align="center" colspan="7" bgcolor="white">
       <%=request.getAttribute("bar") %>
     </td>
    </tr>    
    <tr>
     <td align="center" colspan="7" bgcolor="white">
       添加新物品
     </td>
    </tr>
    <tr>
    <form name="form1" action="AddServlet" method="post" onsubmit="return check3(this)">
    <td align="center">0<%=request.getAttribute("count")%></td>
    <td><input size="5" type="text" name="name"></td>
    <td><input size="3" type="text" name="price"></td>
    <td><input size="3" type="text" name="num"></td>
    <td><input size="3" type="text" name="unit"></td>
    <td align="center"><input size="7" type="submit" name="submit"  value="点击添加物品"></td>
    </form>
    <td style="color:909090">删除</td>
    </tr>
    <tr>
    <td colspan="5" align="center">所有产品一共￥:<%= request.getAttribute("sum").toString()%></td>
    <td align="center"><input type="submit" value="点击提交表单"></td>
    <td style="color:909090">删除</td>
    </tr>
    </table>
    </body>
    </html>
