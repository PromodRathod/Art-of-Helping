package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class donate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Donate</title>\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("\t.card {\n");
      out.write("  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);\n");
      out.write("  max-width: 660px;\n");
      out.write("  margin-left:140px;\n");
      out.write("  background-color: white; opacity: 0.9;\n");
      out.write("  text-align: left;\n");
      out.write("  font-family: 'Proxima Nova Soft', 'Helvetica Neue', sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\tinput[type=text], input[type=password] {\n");
      out.write("  width: 100%;\n");
      out.write("  padding: 15px;\n");
      out.write("  margin: 5px 0 22px 0;\n");
      out.write("  display: inline-block;\n");
      out.write("  border: none;\n");
      out.write("  background: #f1f1f1;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {font-family: Arial, Helvetica, sans-serif;}\n");
      out.write("* {box-sizing: border-box;}\n");
      out.write("\n");
      out.write("input[type=text]:focus, input[type=password]:focus {\n");
      out.write("  background-color: #ddd;\n");
      out.write("  outline: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("button {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 100%;\n");
      out.write("  opacity: 0.9;\n");
      out.write("}\n");
      out.write("\n");
      out.write("button:hover {\n");
      out.write("  opacity:1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".reset, .submit {\n");
      out.write(" \n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container {\n");
      out.write("  padding: 16px;\n");
      out.write("  max-width:1000%;\n");
      out.write("  align:center;\n");
      out.write("}\n");
      out.write("\t#mySidenav a {\n");
      out.write("  position: absolute;\n");
      out.write("  left: -70px;\n");
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
      out.write("#back {\n");
      out.write("  top: 20px;\n");
      out.write("  background-color: lightgreen;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\t\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write(" <body style=\"font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;\" background=\"19604.jpg\">\n");
      out.write("\n");
      out.write("<div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("  <a href=\"home.jsp\" id=\"back\">Back</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"card\">\n");
      out.write("<div style=\"margin:25px\">\n");
      out.write("<br>\n");
      out.write("      <h1>Donate</h1>\n");
      out.write("      <p>Please help in any way possible</p>\n");
      out.write("      <br>\n");
      out.write("</div></div>\n");
      out.write("\n");
      out.write("<div class=\"card\">\n");
      out.write("<div style=\"margin:25px\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("<form class=\"modal-content\" action=\"donatetemp.jsp\" method=\"post\">\n");
      out.write("\n");
      out.write("    Name : <input type=\"text\" name=\"name\"><br><br>\n");
      out.write("\n");
      out.write("      \n");
      out.write("    Phone Number : <input type=\"text\" name=\"phno\"><br><br>\n");
      out.write("\n");
      out.write("    State : <input type=\"text\" name=\"state\"><br><br>\n");
      out.write("\n");
      out.write("    Country : <input type=\"text\" name=\"country\"><br><br>\n");
      out.write("\t\t  \t \n");
      out.write("    Address : <input type=\"text\" name=\"add\"><br><br>\t\n");
      out.write("\n");
      out.write("    Amount : <input type=\"text\" name=\"amt\"><br><br>\n");
      out.write("\t\n");
      out.write("    Medicines : <input type=\"text\" name=\"mds\" placeholder=\"Yes/No\"><br><br>\n");
      out.write("    \n");
      out.write("    Clothes : <input type=\"text\" name=\"clt\" placeholder=\"Yes/No\"><br><br>    \n");
      out.write("\n");
      out.write("    Item Quantity : <input type=\"text\" name=\"iqy\" placeholder=\"(d-dozen, p-pieces, b-box)\"><br><br> \n");
      out.write("      <div class=\"clearfix\">\n");
      out.write("        <button type=\"submit\" class=\"submit\">Submit</button>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </form>\n");
      out.write("  \n");
      out.write("  </div></div>\n");
      out.write("  </body>\n");
      out.write("  </html>\n");
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
