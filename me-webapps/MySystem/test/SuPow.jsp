<%@ page language="java" import="java.util.*" import="bean.*;" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>系统管理</title>
     <%
	  String name=session.getAttribute("name").toString();
	  int i;
	  String trn;
	  Notice n=(Notice)request.getAttribute("notice");
	  List<User> uList=(List<User>)request.getAttribute("uList");
	  List<Car> cList=(List<Car>)request.getAttribute("cList");
	  List<Worker> wList=(List<Worker>)request.getAttribute("wList");
	  List<Parts> pList=(List<Parts>)request.getAttribute("pList");
	  List<Orders> ol1=(List<Orders>)request.getAttribute("ol1");
	  List<Orders> ol2=(List<Orders>)request.getAttribute("ol2");
	  List<String> aList=(List<String>)request.getAttribute("aList");
	  String un=request.getParameter("name");
	  List<User> ul1=new ArrayList<User>();
	 %>
	 <script src="bean/jquery-3.2.0.min.js" type="text/javascript"></script>
	 <script language="javascript">
	  function realSysTime(clock){
	    var now=new Date();
	    var year=now.getFullYear();
	    var month=now.getMonth();
	    var date=now.getDate();
	    var day=now.getDay();
	    var hour=now.getHours();
	    var minu=now.getMinutes();
	    var sec=now.getSeconds();
	    month=month+1;
	    var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
	    var week=arr_week[day];
	    var time=year+"年 "+month+"月 "+date+"日 "+week;
	    if(hour<10){
	       time=time+" 0"+hour;
	    }
	    else{
	       time=time+" "+hour;
	    }
	    if(minu<10){
	      time=time+":0"+minu;
	    }
	    else{
	      time=time+":"+minu;
	    }
	    if(sec<10){
	      time=time+":0"+sec;
	    }
	    else{
	      time=time+":"+sec;
	    }
	    
	    clock.innerHTML="当前时间："+time;
	  }
	  window.onload=function(){
	    window.setInterval("realSysTime(clock)", 1000);
	  }
	</script>
	<script>
	  $(function(){
    		$(".act1").click(function(e){
    			var $form1=$(".notice");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".u1").click(function(e){
    			var $form1=$(".user1");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".u2").click(function(e){
    			var $form1=$(".user2");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".u3").click(function(e){
    			var $form1=$(".user3");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".c1").click(function(e){
    			var $form1=$(".car1");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".c2").click(function(e){
    			var $form1=$(".car2");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".c3").click(function(e){
    			var $form1=$(".car3");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".w1").click(function(e){
    			var $form1=$(".worker");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".w2").click(function(e){
    			var $form1=$(".worker2");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".w3").click(function(e){
    			var $form1=$(".worker3");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".p1").click(function(e){
    			var $form1=$(".parts");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".p2").click(function(e){
    			var $form1=$(".parts2");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".p3").click(function(e){
    			var $form1=$(".parts3");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".o1").click(function(e){
    			var $form1=$(".order1");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".o2").click(function(e){
    			var $form1=$(".order2");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".o3").click(function(e){
    			var $form1=$(".order3");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".o4").click(function(e){
    			var $form1=$(".order4");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".a1").click(function(e){
    			var $form1=$(".article1");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".a2").click(function(e){
    			var $form1=$(".article2");
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".next2").click(function(e){
    			var $form1=$(this).next();
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	$(function(){
    		$(".next1").click(function(e){
    			var $form1=$(this).next();
    			if($form1.is(":visible")){
    				$form1.hide();
					e.stopPropagation();
    			}else{
    				$form1.show();
					e.stopPropagation();
    			}
    			
    		})
    	})
    	
	</script>
	<script>
	  function add(event){
	  event.stopPropagation();
	  var target=event.target;
	  var trnn=document.getElementById("trnn");
	  console.log(trnn);
	  var orderaddtable=document.getElementsByClassName("tbn")[0];
	  var newrow=document.createElement("tr");
	  var innerHTMLString="<td class=\"tr1\">服务项目：</td>"+
	                    "<td><select name=\"parts\" style=\"width:120px;font-size:18px;height:25px;\">"+
						"<%for(Parts p:pList) { %>"+
						"<option value=\"<%=p.getPName() %>\">"+
						"<%=p.getPName() %>"+"</option>"+"<%} %>"+
						"</select></td>"+
						"<td style=\"width:60px;\">数量:</td>"+
						"<td><input class=\"input3\" type=\"text\" name=\"num\" value=\"\"></td>"+
						"<td><button class=\"input3\" type=\"button\">添加</button></td>";
	  newrow.innerHTML=innerHTMLString;
	  orderaddtable.insertBefore(newrow,trnn);
	  }
	</script>
	<link rel="stylesheet" type="text/css" href="style2.css">
  </head>
  
  <body>
    <div class="top">
     <div class="tlp">
       <image src="/MySystem/picture/npu.jpg" height="70px" width="70px">
     </div>
     <div class="linka">
       <a href="index.jsp">首页</a>
     </div>
     <div class="linka">
       <a href="">故障查询</a>
     </div>
     <div class="linka">
       <a href="ArticleListServlet">汽修资料</a>
     </div>
     <div class="linka">
       <a href="test/AboutUs.jsp">关于企业</a>
     </div>
     <div class="linka">
       <a href="test/AboutUs.jsp">联系我们</a>
    </div>
      <div class="in2">
        <%=name %>超级管理员，欢迎您
        <a href="index.jsp">退出</a>
      </div>      
   </div>
   <div class="body1">
     <div class="bodyleft">
       <div class="left">
         <div class="leftpic">
            <image src="/MySystem/picture/pic1.jpg" heigth="90px" width="100px" >
         </div>
         <div class="leftfont">
         <%=name %><br>管理员
         </div>
         <br>
         <div class="mess" id="clock"></div>
         <div class="mess1">     
           <ul>
             <li class="act1">公告管理</li>
             <li class="style2"><a class="next2">用户管理</a>
               <ul class="l2">
                 <li class="u3">分类检索</li>
                 <li class="u1">用户列表</li>
                 <li class="u2">添加新用户</li>
               </ul>
             </li>
             <li class="style1"><a class="next1">车辆管理</a>
               <ul class="l2">
                 <li class="c3">分类检索</li>
                 <li class="c1">车辆列表</li>
                 <li class="c2">添加新车辆</li>
               </ul>
             </li>
             <li class="style2"><a class="next2">员工管理</a>
               <ul class="l2">
                 <li class="w3">分类检索</li>
                 <li class="w1">员工列表</li>
                 <li class="w2">添加新员工</li>
                 <li class="w3">分类检索</li>
               </ul>
             </li>
             <li class="style1"><a class="next1">库存管理</a>
               <ul class="l2">
                 <li class="p3">分类检索</li>
                 <li class="p1">库存列表</li>
                 <li class="p2">添加新零件</li>  
               </ul>
             </li>
             <li class="style2"><a class="next2">订单管理</a>
               <ul class="l2">
                 <li class="o1">添加新订单</li>
                 <li class="o2">未处理订单</li>
                 <li class="o3">进行中订单</li>
                 <li class="o4">订单历史记录</li>
               </ul>
             </li>
             <li class="style1"><a class="next1">文献管理</a>
               <ul class="l2">
                 <li class="a1">上传新文档</li>
                 <li class="a2">文档列表</li>
               </ul>
             </li>
           </ul>
         </div>
       </div>
       </div>
     <div class="bodyright">
       <div class="notice">      
         <p>公告板管理</p><br>
         <form name="notice" action="NoticeServlet" method="post">
           <input type="hidden" name="name" value="<%=name%>">
           <table class="tb">
             <tr>
               <td class="tr1">今日天气：</td>
               <td><input class="input" type="text" name="weather" value="<%=n.getWeather()%>"></td>
             </tr>
             <tr>
              <td class="tr1">今日油价：</td>
             </tr>
             <tr>
               <td class="tr1">90号汽油：</td>
               <td><input class="input" type="text" name="oil90" value="<%=n.getOil90()%>"></td>
             </tr>
             <tr>
               <td class="tr1">93号汽油：</td>
               <td><input class="input" type="text" name="oil93" value="<%=n.getOil93()%>"></td>
             </tr>
             <tr>
               <td class="tr1">97号汽油：</td>
               <td><input class="input2" type="text" name="oil97" value="<%=n.getOil97()%>"></td>
             </tr>
             <tr>
               <td class="tr1">交通状况：</td>
               <td><input class="input" type="text" name="road" value="<%=n.getRoad()%>"></td>
             </tr>
             <tr>
               <td class="tr1">今日优惠：</td>
               <td><input class="input" type="text" name="benefit" value="<%=n.getBenefit()%>"></td>
             </tr>
             <tr align="center">            
               <td colspan="2"><input type="submit" class="input1" name="submit" value="确定修改"></td>
             </tr>
           </table>
         </form>
       </div>
       <div class="user3">
         <p>分类检索</p><br>
         <form class="tb1" name="" action="">
         <table>
           <tr>
             <td>
               <input type="text" value="" style="width:75px;height:25px;" name="name">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="姓名检索" name="submit">
             </td>
           </tr>
         </table>
         </form>
         <table class="tb1">
           <tr>
             <td>
               <input type="text" value="" style="width:180px;height:25px;" name="name">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="证件号检索" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb1">
           <tr>
             <td>
               <select name="sex" style="width:60px;font-size:18px;height:25px;">
                 <option value="">---</option>
                 <option value="male">男</option>
                 <option value="female">女</option>
               </select>
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="性别检索" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb1">
           <tr>
             <td>
               <input type="text" value="" style="width:70px;height:25px;" name="name">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="当前城市" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb">
           <tr class="tr1">
             <td>序号</td>
             <td style="width:80px;">姓名</td>
             <td style="width:210px;">证件号</td>
             <td style="width:130px;">联系方式</td>
             <td style="width:50px;">性别</td>
             <td style="width:70px;">密码</td>
             <td style="width:80px;">当前城市</td>
             <td>操作</td>
            <td>删除</td>
           </tr>
           <% i=0;
           for(User u:ul1) {
           i++;
           if(i%2==0)trn="tr2";
           else trn="";
          %>
         <tr class="<%=trn%>" align="center">
           <td>0<%=i %></td>
           <td><%=u.getName() %></td>
           <td><%=u.getIDCard() %></td>                             
           <td><%=u.getPhone() %></td>
           <td><%=u.getSex() %></td>
           <td><%=u.getPassword() %></td>       
           <td>西安市</td>
           <td>
             <a href="">
                                操作</a></td>
           <td><a href="">删除</a></td>
         </tr>
          <%} %>
        </table>
       </div>
       <div class="user1">
         <p>用户管理</p><br>
         <table class="tb">
          <tr class="tr1">
            <td>序号</td>
            <td>姓名</td>
            <td>证件号</td>
            <td>联系方式</td>
            <td>性别</td>
            <td>密码</td>
            <td>当前城市</td>
            <td>操作</td>
            <td>删除</td>
         </tr>
          <% i=0;
           for(User u:uList) {
           i++;
           if(i%2==0)trn="tr2";
           else trn="";
          %>
         <tr class="<%=trn%>" align="center">
           <td>0<%=i %></td>
           <td><%=u.getName() %></td>
           <td><%=u.getIDCard() %></td>                             
           <td><%=u.getPhone() %></td>
           <td><%=u.getSex() %></td>
           <td><%=u.getPassword() %></td>       
           <td>西安市</td>
           <td>
             <a href="">
                                操作</a></td>
           <td><a href="SPUserServlet?IDCard=<%=u.getIDCard()%>">删除</a></td>
         </tr>
          <%} %>
           <tr class="tr3">
             <td align="center" colspan="9">
              --<%=request.getAttribute("uBar") %>--
           </td>
           </tr>
         </table>
       </div>
       <div class="user2">
         <p>添加新用户</p>
         <form action="SPUserServlet" name="user" method="post">
         <table class="tb">
           <tr class="tr1">
             <td>添加</td>
             <td>姓名</td>
             <td>证件号</td>
             <td>联系方式</td>
             <td>性别</td>
             <td>密码</td>
             <td>当前城市</td>
             <td>添加用户</td>
           </tr>
           <tr align="center">
           <td>---</td>
           <td><input type="text" name="name" value="" style="width:80px;height:25px;"></td>
           <td><input type="text" name="IDCard" value="" style="width:210px;height:25px;"></td>
           <td><input type="text" name="phone" value="" style="width:130px;height:25px;"></td>
           <td><input type="text" name="sex" value="" style="width:50px;height:25px;"></td>
           <td><input type="password" name="password" value="" style="width:70px;height:25px;"></td>
           <td><input type="text" name="address" value="" style="width:80px;height:25px;"></td>
           <td colspan="2"><input type="submit" name="submit" style="font-size:18px;" value="添加用户"></td>
         </tr>
        </table>
        </form>
       </div>
       <div class="car3">
         <p>分类检索车辆</p>
         <table class="tb1">
           <tr>
             <td>
               <input type="text" value="" style="width:80px;height:25px;" name="">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="车牌检索" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb1">
           <tr>
             <td>
               <input type="text" value="" style="width:200px;height:25px;" name="IDCard">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="证件号检索" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb1">
           <tr>
             <td>
               <input type="text" value="" style="width:70px;height:25px;" name="name">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="车型检索" name="submit">
             </td>
           </tr>
         </table>
         <table>
           <tr class="tr1">
             <td>序号</td>
             <td style="width:95px;">车牌号</td>
             <td style="width:80px;">车型</td>
             <td style="width:45px;">颜色</td>
             <td style="width:210px;">身份证号码</td>
             <td style="width:105px;">出厂日期</td>
             <td style="width:80px;">备注信息</td>
             <td>操作</td>
             <td>删除</td>
           </tr>
         </table>
       </div>
       <div class="car1">
         <p>车辆管理</p><br>
         <table class="tb">
         <tr class="tr1">
           <td>序号</td>
           <td>车牌号</td>
           <td>车型</td>
           <td>颜色</td>
           <td>身份证号码</td>
           <td>出厂日期</td>
           <td>备注信息</td>
           <td>操作</td>
           <td>删除</td>
         </tr>
         <%i=0;
           for(Car c:cList) {
           i++;
           if(i%2==0)trn="tr2";
           else trn="";
           %>
         <tr class="<%=trn%>" align="center">
         <td>0<%=i %></td>
           <td><%=c.getCarId() %></td>
           <td><%=c.getCarType() %></td>                             
           <td><%=c.getColor() %></td>
           <td><%=c.getIDCard() %></td>
           <td><%=c.getStartDate() %></td>       
           <td><%=c.getCMark() %></td>
           <td>
             <a href="test/UpdatePerson.jsp?IDCard=<%=c.getIDCard()%>&carId=<%=c.getCarId()%>&carType=<%=c.getCarType() %>">
                                操作</a></td>
           <td><a href="">删除</a></td>
         </tr>
         <%} %>
         <tr class="tr3">
           <td align="center" colspan="9">
              <%=request.getAttribute("cBar") %>
           </td>
         </tr>
         </table>
       </div>
       <div class="car2">
         <p>添加车辆</p><br>
         <table>
           <tr class="tr1">
             <td>序号</td>
             <td>车牌号</td>
             <td>车型</td>
             <td>颜色</td>
             <td>身份证号码</td>
             <td>出厂日期</td>
             <td>备注信息</td>
             <td>点击添加</td>
           </tr>
           <tr align="center">
             <td>---</td>
             <td><input type="text" name="carId" value="" style="height:25px;width:100px"></td>
             <td><input type="text" name="carType" value="" style="height:25px;width:80px"></td>
             <td><input type="text" name="color" value="" style="height:25px;width:50px"></td>
             <td><input type="text" name="IDCard" value="" style="height:25px;width:210px"></td>
             <td><input type="password" name="pstartDate" value="" style="height:25px;width:95px"></td>
             <td><input type="text" name="cMark" value="" style="height:25px;width:80px"></td>
             <td colspan="2"><input type="submit" name="submit" style="font-size:18px;" value="添加车辆"></td>        
           </tr>
         </table>
       </div>
       <div class="worker3">
         <p>检索员工</p><br>
         <table class="tb1">
           <tr>
             <td>
               <input type="text" value="" style="width:80px;height:25px;" name="name">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="姓名检索" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb1">
           <tr>
             <td>
               <input type="text" value="" style="width:180px;height:25px;" name="name">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="证件号检索" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb1">
           <tr>
             <td>
               <select name="sex" style="width:60px;font-size:18px;height:25px;">
                 <option value="">---</option>
                 <option value="male">男</option>
                 <option value="female">女</option>
               </select>
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="性别检索" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb">
           <tr class="tr1">
             <td>序号</td>
             <td  style="width:60px;">姓名</td>
             <td style="width:50px;">工号</td>
             <td style="width:130px;">联系电话</td>
             <td style="width:50px;">性别</td>
             <td style="width:80px;">业务类型</td>
             <td style="width:80px;">业务等级</td>
             <td style="width:80px;">当月绩效</td>
             <td style="width:80px;">排队人数</td>
             <td>操作</td>
             <td>删除</td>
           </tr>
         </table>
       </div>
       <div class="worker">
         <p>员工信息管理</p><br>
         <table class="tb">
         <tr class="tr1">
           <td>序号</td>
           <td>姓名</td>
           <td>工号</td>
           <td>联系电话</td>
           <td>性别</td>
           <td>业务类型</td>
           <td>业务等级</td>
           <td>当月绩效</td>
           <td>排队人数</td>
           <td>操作</td>
           <td>删除</td>
         </tr>
         <%i=0;
           for(Worker w:wList) {
           i++;
           if(i%2==0)trn="tr2";
           else trn="";
           
           %>
         <tr class="<%=trn %>" align="center">
           <td>0<%=i %></td>
           <td><%=w.getWName() %></td>
           <td><%=w.getWorkId() %></td>
           <td><%=w.getWPhone() %></td>
           <td><%=w.getWSex() %></td>
           <td><%=w.getWType() %></td>
           <td><%=w.getWClass() %></td>
           <td><%=w.getAchieve() %></td>
           <td><%=w.getWLine() %></td>
           <td><a href="">操作</a></td>
           <td><a href="">删除</a></td>
         </tr>
         <%} %>
       </table>
       </div>
       <div class="worker2">
         <p>添加新员工</p><br>
         <table class="tb">
           <tr class="tr1">
             <td>序号</td>
             <td>姓名</td>
             <td>工号</td>
             <td>联系电话</td>
             <td>性别</td>
             <td>业务类型</td>
             <td>业务等级</td>
             <td>当月绩效</td>
             <td>排队人数</td>
             <td>点击添加</td>
           </tr>
           <tr align="center">
             <td>---</td>
             <td><input type="text" name="name" value="" style="width:60px;height:25px;"></td>
             <td><input type="text" name="workId" value="" style="width:50px;height:25px;"></td>
             <td><input type="text" name="wPhone" value="" style="width:125px;height:25px;"></td>
             <td><input type="text" name="wSex" value="" style="width:50px;height:25px;"></td>
             <td><input type="text" name="wType" value="" style="width:80px;height:25px;"></td>
             <td><input type="text" name="class" value="" style="width:80px;height:25px;"></td>
             <td><input type="text" name="achieve" value="" style="width:80px;height:25px;"></td>
             <td><input type="text" name="wLine" value="" style="width:80px;height:25px;"></td>
             <td colspan="2"><input type="submit" name="submit" style="font-size:18px;" value="添加用户"></td>
           </tr>
         </table>
       </div>
       <div class="parts3">
         <p>检索零件</p><br>
         <table class="tb1">
           <tr>
             <td>
               <input type="text" value="" style="width:90px;height:25px;" name="name">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="编号检索" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb1">
           <tr>
             <td>
               <input type="text" value="" style="width:155px;height:25px;" name="name">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="名称检索" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb1">
           <tr>
             <td>
               <input type="text" value="" style="width:155px;height:25px;" name="name">
             </td>
             <td>
               <input type="submit" style="font-size:18px;" value="厂商检索" name="submit">
             </td>
           </tr>
         </table>
         <table class="tb">
           <tr class="tr1">
             <td>序号</td>
             <td style="width:90px;">零件编号</td>
             <td style="width:90px;">名称</td>
             <td style="width:80px;">单价</td>
             <td style="width:110px;">提供商</td>
             <td style="width:60px;">数量</td>
             <td colspan="2" style="width:130px;">修改零件数量</td>
             <td>删除</td>
           </tr>
         </table>
       </div>
       <div class="parts">
         <p>库存管理</p><br>
         <table class="tb">
           <tr class="tr1">
             <td>序号</td>
             <td style="width:90px;">零件编号</td>
             <td style="width:90px;">名称</td>
             <td style="width:80px;">单价</td>
             <td style="width:110px;">提供商</td>
             <td style="width:60px;">数量</td>
             <td colspan="2" style="width:130px;">修改零件数量</td>
             <td>删除</td>
           </tr>
         <%i=0;
           for(Parts p:pList) {
           i++;
           if(i%2==0)trn="tr2";
           else trn="";
         %>
           <tr class="<%=trn%>" align="center">
             <td>0<%=i %></td>
             <td><%=p.getPartId() %></td>
             <td><%=p.getPName() %></td>
             <td><%=p.getPrice() %></td>
             <td><%=p.getProvider() %></td>
             <td><%=p.getPNum() %></td>
             <td><input type="text" name="" value="" style="height:25px;width:80px;"></td>
             <td><input type="submit" name="submit" value="修改" style="width:50px;font-size:18px;"></td>
             <td><a href="">删除</a></td>
           </tr>
         <%} %>
           <tr>
             <td align="center" colspan="9" class="tr3">
              <%=request.getAttribute("cBar") %>
             </td>
           </tr>
         </table>
       </div>
      
       <div class="parts2">
         <p>添加新零件</p>
         <table class="tb">
           <tr class="tr1">
             <td>序号</td>
             <td style="width:90px;">零件编号</td>
             <td style="width:90px;">名称</td>
             <td style="width:80px;">单价</td>
             <td style="width:110px;">提供商</td>
             <td style="width:60px;">数量</td>
             <td style="width:100px;">点击添加</td>
           </tr>
           <tr align="center">
             <td>---</td>
             <td><input type="text" name="name" value="" style="width:90px;height:25px;"></td>
             <td><input type="text" name="workId" value="" style="width:90px;height:25px;"></td>
             <td><input type="text" name="wPhone" value="" style="width:80px;height:25px;"></td>
             <td><input type="text" name="wSex" value="" style="width:110px;height:25px;"></td>
             <td><input type="text" name="wType" value="" style="width:60px;height:25px;"></td>
             <td><input type="submit" name="submit" style="width:100px;font-size:18px;" value="添加零件"></td>
           </tr>
         </table>
       </div>
       <div class="order1">
         <p>添加新订单</p><br>
         <form name="order" action="" method="post">
           <table>
             <tbody class="tbn">
             <tr>
               <td class="tr1">车牌号码：</td>
               <td colspan="4"><input class="input" type="text" name="weather" value=""></td>
             </tr>
             <tr>
              <td class="tr1">用户名：</td>
              <td colspan="4"><input class="input" type="text" name="name" value=""></td>
             </tr>
             <tr>
               <td class="tr1">业务类型：</td>
               <td colspan="4"><input class="input" type="text" name="oil90" value=""></td>
             </tr>
             <tr>
               <td class="tr1">技师编号：</td>
               <td colspan="4"><input class="input" type="text" name="oil93" value=""></td>
             </tr>
             <tr>
               <td class="tr1">服务项目：</td>
               <td>
                 <select name="parts" style="width:120px;font-size:18px;height:25px;">
                   <%for(Parts p:pList) { %>
                   <option value="<%=p.getPName()%>"><%=p.getPName() %></option>
                   <%} %>
                 </select>
               </td>
               <td style="width:60px;">数量:</td>
               <td><input class="input3" type="text" name="num" value=""></td>
               <td><button class="input3" type="button" onclick="add(event)">添加</button></td>
             </tr>
             <tr id="trnn">
               <td class="tr1">消费总计：</td>
               <td colspan="4"><input class="input" type="text" name="road" value=""></td>
             </tr>
             <tr>
               <td class="tr1">情况备注：</td>
               <td colspan="4"><input class="input" type="text" name="benefit" value=""></td>
             </tr>
             <tr align="center">            
               <td colspan="5"><input type="submit" class="input1" name="sub1" value="确定提交"></td>
             </tr>
             </tbody>
           </table>
         </form>
       </div>
       <div class="order2">
         <p>未处理订单信息</p><br>
         <table class="tb">
         <tr class="tr1">
           <td>序号</td>
           <td>订单编号</td>
           <td>车牌号</td>
           <td>用户名</td>
           <td>业务类型</td>
           <td>技师编号</td>
           <td>提交日期</td>
           <td>情况备注</td>
           <td>状态</td>
           <td>操作</td>
           <td>删除</td>
         </tr>
         <%i=0;
           for(Orders o:ol1) {
           i++;
           if(i%2==0)trn="tr2";
           else trn="";
           
           %>
         <tr class="<%=trn %>" align="center">
           <td>0<%=i %></td>
           <td><%=o.getOId() %></td>
           <td><%=o.getCarId() %></td>
           <td><%=o.getName() %></td>
           <td><%=o.getOType() %></td>
           <td><%=o.getWorkId() %></td>
           <td><%=o.getODate() %></td>
           <td><%=o.getOMark() %></td>
           <td><%=o.getIfOk() %></td>
           <td><a href="">操作</a></td>
           <td><a href="">删除</a></td>
         </tr>
         <%} %>
       </table>
       </div>
       <div class="order3">
        <p>进行中订单信息</p><br>
         <table class="tb">
         <tr class="tr1">
           <td>序号</td>
           <td>订单编号</td>
           <td>车牌号</td>
           <td>用户名</td>
           <td>业务类型</td>
           <td>技师编号</td>
           <td>提交日期</td>
           <td>情况备注</td>
           <td>状态</td>
           <td>操作</td>
           <td>删除</td>
         </tr>
         <%i=0;
           for(Orders o:ol2) {
           i++;
           if(i%2==0)trn="tr2";
           else trn="";
           
           %>
         <tr class="<%=trn %>" align="center">
           <td>0<%=i %></td>
           <td><%=o.getOId() %></td>
           <td><%=o.getCarId() %></td>
           <td><%=o.getName() %></td>
           <td><%=o.getOType() %></td>
           <td><%=o.getWorkId() %></td>
           <td><%=o.getODate() %></td>
           <td><%=o.getOMark() %></td>
           <td><%=o.getIfOk() %></td>
           <td><a href="">操作</a></td>
           <td><a href="">删除</a></td>
         </tr>
         <%} %>
       </table>
        
       </div>
       <div class="order4"></div>
       <div class="article1">
         
       </div>
       <div class="article2">
         <p>文献列表</p>
         <table class="tb1">
           <%i=0;
         for(String s:aList){ 
           i++;
       %>
         <tr>
           <td>
             <a href="SelectServlet?name=<%=s%>" style="color:#000000;"><%=i+"、"+s %></a>
           </td>
           <td>
             <a href="DeleteArtServlet?name=<%=s%>">删除</a>
           </td>
         </tr>
       <%} %>
         </table>
         </div>
     </div>
    </div>
    <div class="bottom">NWPU MIS | Copyright © 2017 </div>
  </body>
</html>
