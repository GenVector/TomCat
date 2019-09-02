<%@ page language="java" import="java.util.*" import="test.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SessionTest</title>
    <script type="text/javascript">
function checkNull(form){
	for(i=0;i<form.length;i++){  
		if(form.elements[i].value == ""){         //form的属性elements的首字e要小写
			alert("很抱歉，"+form.elements[i].title + "不能为空!");
			form.elements[i].focus();			//当前元素获取焦点
			return false;
		}
	}
}
</script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  
  </head>
  
  <body>
  <%List<Content> list=(List<Content>)request.getAttribute("list"); 
    for(int i=0;i<list.size();i++){
      out.print(list.get(i).getAuthor()+":");
      out.print(list.get(i).getContent());
      out.print("<br>");
    }
  %>
    <form name="form1" method="get" action="SessionServlet" onSubmit="return checkNull(form1)">
留&nbsp;&nbsp;言&nbsp;&nbsp;人：
<input name="author" type="text" id="author" size="30" title="留言人"><br>
留言内容：
<textarea name="content" cols="70" rows="10" title="留言内容" id="content"></textarea><br>
<input name="Submit" type="submit" value="签写留言">
<input name="Submit2" type="reset" value="重置">

</form>
  </body>
</html>
