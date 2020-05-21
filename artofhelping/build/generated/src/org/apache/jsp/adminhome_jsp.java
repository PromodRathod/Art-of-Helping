package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin</title>\n");
      out.write("        <style>\n");
      out.write("            \t#mySidenav a {\n");
      out.write("  position: absolute;\n");
      out.write("  left: -90px;\n");
      out.write("  transition: 0.3s;\n");
      out.write("  padding: 15px;\n");
      out.write("  width: 100px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 20px;\n");
      out.write("  color: white;\n");
      out.write("  border-radius: 0 5px 5px 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#mySidenav a:hover {\n");
      out.write("  left: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("#logout {\n");
      out.write("  top: 20px;\n");
      out.write("  background-color: lightgreen;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#ware {\n");
      out.write("  top: 80px;\n");
      out.write("  background-color: navy;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#goods {\n");
      out.write("  top: 140px;\n");
      out.write("  background-color: red;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#pymnt {\n");
      out.write("  top: 220px;\n");
      out.write("  background-color: orange;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#mngrp {\n");
      out.write("  top: 300px;\n");
      out.write("  background-color: blueviolet;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;\" background=\"19604.jpg\">\n");
      out.write("        <div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("        <a href=\"home.jsp\" id=\"logout\">Log Out</a>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("        <a href=\"warehouse.jsp\" id=\"ware\">Warehouses</a>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("        <a href=\"goods.jsp\" id=\"goods\">Manage Goods</a>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("        <a href=\"paymentmanagement.jsp\" id=\"pymnt\">Donation Details</a>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("        <a href=\"managegroup.jsp\" id=\"mngrp\">Groups</a>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
