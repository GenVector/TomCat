/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-03-19 13:12:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class MainPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>个人主页</title>\r\n");
      out.write("    \r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("\t");

	  String name;
	  if(request.getAttribute("name")!=null)
	    name=(String)request.getAttribute("name");
	  else name="<a>未登录</a>";
	  
	 
      out.write("\r\n");
      out.write("\t<script language=\"javascript\">\r\n");
      out.write("\t  function realSysTime(clock){\r\n");
      out.write("\t    var now=new Date();\r\n");
      out.write("\t    var year=now.getFullYear();\r\n");
      out.write("\t    var month=now.getMonth();\r\n");
      out.write("\t    var date=now.getDate();\r\n");
      out.write("\t    var day=now.getDay();\r\n");
      out.write("\t    var hour=now.getHours();\r\n");
      out.write("\t    var minu=now.getMinutes();\r\n");
      out.write("\t    var sec=now.getSeconds();\r\n");
      out.write("\t    month=month+1;\r\n");
      out.write("\t    var arr_week=new Array(\"星期日\",\"星期一\",\"星期二\",\"星期三\",\"星期四\",\"星期五\",\"星期六\");\r\n");
      out.write("\t    var week=arr_week[day];\r\n");
      out.write("\t    var time=year+\"年 \"+month+\"月 \"+date+\"日 \"+week;\r\n");
      out.write("\t    if(hour<10){\r\n");
      out.write("\t       time=time+\" 0\"+hour;\r\n");
      out.write("\t    }\r\n");
      out.write("\t    else{\r\n");
      out.write("\t       time=time+\" \"+hour;\r\n");
      out.write("\t    }\r\n");
      out.write("\t    if(minu<10){\r\n");
      out.write("\t      time=time+\":0\"+minu;\r\n");
      out.write("\t    }\r\n");
      out.write("\t    else{\r\n");
      out.write("\t      time=time+\":\"+minu;\r\n");
      out.write("\t    }\r\n");
      out.write("\t    if(sec<10){\r\n");
      out.write("\t      time=time+\":0\"+sec;\r\n");
      out.write("\t    }\r\n");
      out.write("\t    else{\r\n");
      out.write("\t      time=time+\":\"+sec;\r\n");
      out.write("\t    }\r\n");
      out.write("\t    \r\n");
      out.write("\t    clock.innerHTML=\"当前时间：\"+time;\r\n");
      out.write("\t  }\r\n");
      out.write("\t  window.onload=function(){\r\n");
      out.write("\t    window.setInterval(\"realSysTime(clock)\", 1000);\r\n");
      out.write("\t  }\r\n");
      out.write("\t</script>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("    <div class=\"top\">\r\n");
      out.write("     <div class=\"tlp\">\r\n");
      out.write("       <image src=\"/MySystem/picture/npu.jpg\" height=\"70px\" width=\"70px\">\r\n");
      out.write("     </div>\r\n");
      out.write("     <div class=\"linka\">\r\n");
      out.write("       <a href=\"http://localhost:8080/MySystem/index.jsp\">首页</a>\r\n");
      out.write("     </div>\r\n");
      out.write("     <div class=\"linka\">\r\n");
      out.write("       <a href=\"\">故障查询</a>\r\n");
      out.write("     </div>\r\n");
      out.write("     <div class=\"linka\">\r\n");
      out.write("       <a href=\"\">汽修资料</a>\r\n");
      out.write("     </div>\r\n");
      out.write("     <div class=\"linka\">\r\n");
      out.write("       <a href=\"\">关于企业</a>\r\n");
      out.write("     </div>\r\n");
      out.write("     <div class=\"linka\">\r\n");
      out.write("       <a href=\"\">联系我们</a>\r\n");
      out.write("    </div>\r\n");
      out.write("      <div class=\"in2\">\r\n");
      out.write("        ");
      out.print(name );
      out.write("您好，欢迎回来\r\n");
      out.write("        <a href=\"http://localhost:8080/MySystem/index.jsp\">退出</a>\r\n");
      out.write("      </div>      \r\n");
      out.write("   </div>\r\n");
      out.write("   <div class=\"body1\">\r\n");
      out.write("     <div class=\"bodyleft\">\r\n");
      out.write("       <div class=\"left\">\r\n");
      out.write("         <div class=\"leftpic\">\r\n");
      out.write("            <image src=\"/MySystem/picture/pic1.jpg\" heigth=\"90px\" width=\"100px\" >\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"leftfont\">\r\n");
      out.write("         ");
      out.print(name );
      out.write("<br>\r\n");
      out.write("         <a href=\"MainPageServlet?name=");
      out.print(request.getAttribute("name"));
      out.write("\">我的资料</a>\r\n");
      out.write("         </div>\r\n");
      out.write("         <br>\r\n");
      out.write("         <image src=\"/MySystem/picture/mess1.png\" heigth=\"50px\" width=\"50px\" ><br>\r\n");
      out.write("         <div class=\"mess\">\r\n");
      out.write("                             亲爱的");
      out.print(name );
      out.write("<br>\r\n");
      out.write("           <div class=\"mess1\">\r\n");
      out.write("             <div id=\"clock\"></div>\r\n");
      out.write("             今日天气：阴转多云4~12℃,空气指数：120轻度污染&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href=\"http://www.weather.com.cn/weather/101110101.shtml\">详情</a><br>\r\n");
      out.write("             今日油价：90号汽油：6.00元/升<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp93号汽油：6.36元/升\r\n");
      out.write("     <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp97号汽油：6.72元/升\r\n");
      out.write("     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp\r\n");
      out.write("     <a href=\"http://www.bitauto.com/youjia/xian/?WT.srch=1\">详情</a><br>\r\n");
      out.write("             交通状况：<a href=\"\">详情</a><br>\r\n");
      out.write("             我的业务：<a href=\"\">详情</a><br>\r\n");
      out.write("           </div>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("   </div>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}