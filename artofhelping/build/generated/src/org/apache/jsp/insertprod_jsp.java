package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.sql.*;

public final class insertprod_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Insert Products</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;\" background=\"19604.jpg\">\n");
      out.write("        \n");
      out.write("        \n");

int wid=Integer.parseInt(request.getParameter("wid"));
String wnm=request.getParameter("inm");
String itp=request.getParameter("itp");
String iqy=request.getParameter("iqy");
String startDateStr = request. getParameter("exdt");
String exdt = request.getParameter("exdt");
DateFormat dformat=new SimpleDateFormat("yyyy-mm-dd");
java.util.Date dobj = dformat.parse(exdt);
long timeInMilli=dobj.getTime();
java.sql.Date dob = new java.sql.Date(timeInMilli);
//Date startDate = sdf. parse(startDateStr);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc", "root", "");

String query = "insert into warehouseprod(warehouse_id,item_name,item_type,expiry_date,item_quantity) values (?,?,?,?,?)";

      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt = conn.prepareStatement(query);
      preparedStmt.setInt (1, wid);
      preparedStmt.setString (2, wnm);
      preparedStmt.setString (3, itp);
      preparedStmt.setDate (4, dob);
      preparedStmt.setString (5, iqy);
      // execute the preparedstatement
      boolean i = preparedStmt.execute();
      if (i==true) { 
      out.write("\n");
      out.write("      \n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "products.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("er", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Successfully Added Products in the WareHouse", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("      \n");
      out.write("    ");
 }
      else { 
      out.write("\n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Products.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("er", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Format of Date is inappropriate", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("      ");
 conn.close(); 
       }
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

      out.write(" \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
