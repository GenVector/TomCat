/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-04-10 12:04:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import bean.*;;

public final class OrderDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>查看订单详情</title>\r\n");

  Car c=(Car)request.getAttribute("car");
  Orders o=(Orders)request.getAttribute("order");
  Worker w=(Worker)request.getAttribute("worker");
  List<CarParts> list=(List<CarParts>)request.getAttribute("cpl");

      out.write("   \r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("   <div class=\"box6\">\r\n");
      out.write("    <p>订单详情</p>\r\n");
      out.write("      <table style=\"width:800px\" align=\"center\">\r\n");
      out.write("             <tr align=\"center\">\r\n");
      out.write("             <td>\r\n");
      out.write("               <image src=\"/MySystem/picture/data1.png\" width=\"50px\" height=\"40px\">&nbsp;&nbsp;\r\n");
      out.write("             </td>\r\n");
      out.write("             <td>订单号</td>\r\n");
      out.write("             <td>车牌号</td>\r\n");
      out.write("             <td>姓名</td>\r\n");
      out.write("             <td>业务类型</td>\r\n");
      out.write("             <td>负责技师</td>\r\n");
      out.write("             <td>日期</td>\r\n");
      out.write("             <td>价格</td>\r\n");
      out.write("             <td>当前状态</td>\r\n");
      out.write("             <td>备注</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr align=\"center\">\r\n");
      out.write("             <td>\r\n");
      out.write("               <image src=\"/MySystem/picture/data1.png\" width=\"50px\" height=\"40px\">&nbsp;&nbsp;\r\n");
      out.write("             </td>\r\n");
      out.write("             <td>");
      out.print(o.getOId() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(o.getCarId() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(o.getName() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(o.getOType() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(o.getWorkId() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(o.getODate() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(o.getSum() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(o.getIfOk() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(o.getOMark() );
      out.write("</td>\r\n");
      out.write("           </tr>\r\n");
      out.write("       </table>\r\n");
      out.write("       <p>车辆详情</p>\r\n");
      out.write("      <table style=\"width:400px\" align=\"center\">\r\n");
      out.write("             <tr align=\"center\">\r\n");
      out.write("             <td>\r\n");
      out.write("               <image src=\"/MySystem/picture/data1.png\" width=\"50px\" height=\"40px\">&nbsp;&nbsp;\r\n");
      out.write("             </td>\r\n");
      out.write("             <td>车牌号码</td>\r\n");
      out.write("             <td>车型</td>\r\n");
      out.write("             <td>颜色</td>\r\n");
      out.write("             <td>出厂日期</td>\r\n");
      out.write("             <td>备注</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr align=\"center\">\r\n");
      out.write("             <td>\r\n");
      out.write("               <image src=\"/MySystem/picture/data1.png\" width=\"50px\" height=\"40px\">&nbsp;&nbsp;\r\n");
      out.write("             </td>\r\n");
      out.write("             <td>");
      out.print(c.getCarId() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(c.getCarType() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(c.getColor() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(c.getStartDate() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(c.getCMark() );
      out.write("</td>\r\n");
      out.write("           </tr>\r\n");
      out.write("       </table>\r\n");
      out.write("       <p>技师资料</p>\r\n");
      out.write("      <table style=\"width:500px\" align=\"center\">\r\n");
      out.write("             <tr align=\"center\">\r\n");
      out.write("             <td>\r\n");
      out.write("               <image src=\"/MySystem/picture/data1.png\" width=\"50px\" height=\"40px\">&nbsp;&nbsp;\r\n");
      out.write("             </td>\r\n");
      out.write("             <td>技师姓名</td>\r\n");
      out.write("             <td>工号</td>\r\n");
      out.write("             <td>性别</td>\r\n");
      out.write("             <td>联系电话</td>\r\n");
      out.write("             <td>业务类型</td>\r\n");
      out.write("             <td>技能等级</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr align=\"center\">\r\n");
      out.write("             <td>\r\n");
      out.write("               <image src=\"/MySystem/picture/data1.png\" width=\"50px\" height=\"40px\">&nbsp;&nbsp;\r\n");
      out.write("             </td>\r\n");
      out.write("             <td>");
      out.print(w.getWName() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(w.getWorkId() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(w.getWSex() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(w.getWPhone() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(w.getWType() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(w.getWClass() );
      out.write("</td>\r\n");
      out.write("           </tr>\r\n");
      out.write("       </table>\r\n");
      out.write("       <p>消费明细</p>\r\n");
      out.write("        <table style=\"width:400px\" align=\"center\">\r\n");
      out.write("           <tr align=\"center\">\r\n");
      out.write("             <td>\r\n");
      out.write("               <image src=\"/MySystem/picture/data1.png\" width=\"50px\" height=\"40px\">&nbsp;&nbsp;\r\n");
      out.write("             </td>\r\n");
      out.write("             <td>编号</td>\r\n");
      out.write("             <td>消费项目</td>\r\n");
      out.write("             <td>数量</td>\r\n");
      out.write("             <td>单价</td>\r\n");
      out.write("             <td>共计</td>\r\n");
      out.write("           </tr>\r\n");
      out.write("           ");
double sum=0;
             double rsum=0;
             for(CarParts cp:list){ 
      out.write("        \r\n");
      out.write("           <tr align=\"center\">\r\n");
      out.write("             <td>\r\n");
      out.write("               <image src=\"/MySystem/picture/data1.png\" width=\"50px\" height=\"40px\">&nbsp;&nbsp;\r\n");
      out.write("             </td>\r\n");
      out.write("             <td>");
      out.print(cp.getPartId() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(cp.getPName() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(cp.getNumber() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(cp.getPrice() );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(cp.getLineSum() );
      out.write("</td>\r\n");
      out.write("           </tr>\r\n");
      out.write("           ");
sum+=cp.getLineSum();
             rsum+=cp.getPrice();
             } 
             sum+=50;
             rsum+=50;
             
      out.write("\r\n");
      out.write("           <tr align=\"center\">\r\n");
      out.write("             <td>\r\n");
      out.write("               <image src=\"/MySystem/picture/data1.png\" width=\"50px\" height=\"40px\">&nbsp;&nbsp;\r\n");
      out.write("             </td>\r\n");
      out.write("             <td>0000</td>\r\n");
      out.write("             <td>服务费用</td>\r\n");
      out.write("             <td>1</td>\r\n");
      out.write("             <td>50.00</td>\r\n");
      out.write("             <td>50.00</td>\r\n");
      out.write("           </tr>\r\n");
      out.write("           <tr align=\"center\">\r\n");
      out.write("             <td>\r\n");
      out.write("               <image src=\"/MySystem/picture/data1.png\" width=\"50px\" height=\"40px\">&nbsp;&nbsp;\r\n");
      out.write("             </td>\r\n");
      out.write("             <td>----</td>\r\n");
      out.write("             <td>共计</td>\r\n");
      out.write("             <td>5</td>\r\n");
      out.write("             <td>");
      out.print(rsum );
      out.write("</td>\r\n");
      out.write("             <td>");
      out.print(sum );
      out.write("</td>\r\n");
      out.write("           </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("             <td></td>\r\n");
      out.write("             <td></td>\r\n");
      out.write("             <td></td>\r\n");
      out.write("             <td></td>\r\n");
      out.write("             <td></td>\r\n");
      out.write("             <td><a style=\"color:#0000dd;font-size:20px;\">中止订单</a></td>\r\n");
      out.write("           </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("      </div>\r\n");
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