package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Home</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <style>\n");
      out.write("        \n");
      out.write("        body, html {\n");
      out.write("  height: 100%;\n");
      out.write("  margin: 0;\n");
      out.write("  font-family: Arial, Helvetica, sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("           \t#mySidenav a {\n");
      out.write("  position: absolute;\n");
      out.write("  left: -10px;\n");
      out.write("  transition: 0.3s;\n");
      out.write("  padding: 15px;\n");
      out.write("  width: 100px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 20px;\n");
      out.write("  color: white;\n");
      out.write("  border-radius: 0 5px 5px 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".hero-image {\n");
      out.write("  background-image: linear-gradient(rgba(0, 100, 0, 0.5), rgba(0, 0, 0, 0.5)), url(\"#\");\n");
      out.write("  height: 50%;\n");
      out.write("  background-position: center;\n");
      out.write("  background-repeat: no-repeat;\n");
      out.write("  background-size: cover;\n");
      out.write("  position: relative;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".hero-text {\n");
      out.write("  text-align: center;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  left: 50%;\n");
      out.write("  transform: translate(-50%, -50%);\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".hero-text button {\n");
      out.write("  border: none;\n");
      out.write("  outline: 0;\n");
      out.write("  display: inline-block;\n");
      out.write("  padding: 10px 25px;\n");
      out.write("  color: black;\n");
      out.write("  background-color: #ddd;\n");
      out.write("  text-align: center;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".hero-text button:hover {\n");
      out.write("  background-color: #555;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".icon-bar {\n");
      out.write("  position: fixed;\n");
      out.write("  top: 70%;\n");
      out.write("  -webkit-transform: translateY(-50%);\n");
      out.write("  -ms-transform: translateY(-50%);\n");
      out.write("  transform: translateY(-50%);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".icon-bar a {\n");
      out.write("  display: block;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 16px;\n");
      out.write("  transition: all 0.3s ease;\n");
      out.write("  color: white;\n");
      out.write("  font-size: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".icon-bar a:hover {\n");
      out.write("  background-color: #000;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".facebook {\n");
      out.write("  background: #3B5998;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".twitter {\n");
      out.write("  background: #55ACEE;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".google {\n");
      out.write("  background: #dd4b39;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".linkedin {\n");
      out.write("  background: #007bb5;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".youtube {\n");
      out.write("  background: #bb0000;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#mySidenav a:hover {\n");
      out.write("  left: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("  #login {\n");
      out.write("  top: 60px;\n");
      out.write("  background-color: red;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#donate {\n");
      out.write("  top: 150px;\n");
      out.write("  background-color: orange;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(".main {\n");
      out.write("  max-width: auto;\n");
      out.write("  margin-left: 100px;;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".row,\n");
      out.write(".row > .column {\n");
      out.write("  padding: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Create four equal columns that floats next to each other */\n");
      out.write(".column {\n");
      out.write("  float: left;\n");
      out.write("  width: 25%;\n");
      out.write("  margin-left :30px;\n");
      out.write("  margin-right :50px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats after rows */ \n");
      out.write(".row:after {\n");
      out.write("  content: \"\";\n");
      out.write("  display: table;\n");
      out.write("  clear: both;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".active,\n");
      out.write(".demo:hover {\n");
      out.write("  opacity: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Content */\n");
      out.write(".content {\n");
      out.write("  background-color: white;\n");
      out.write("  padding: 10px;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Responsive layout - makes a two column-layout instead of four columns */\n");
      out.write("@media screen and (max-width: 900px) {\n");
      out.write("  .column {\n");
      out.write("    width: 50%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */\n");
      out.write("@media screen and (max-width: 600px) {\n");
      out.write("  .column {\n");
      out.write("    width: 100%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dot {\n");
      out.write("  height: 15px;\n");
      out.write("  width: 15px;\n");
      out.write("  margin: 0 2px;\n");
      out.write("  background-color: white;\n");
      out.write("  border-radius: 50%;\n");
      out.write("  display: inline-block;\n");
      out.write("  transition: background-color 0.6s ease;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("/* Next & previous buttons */\n");
      out.write(".prev,\n");
      out.write(".next {\n");
      out.write("  cursor: pointer;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 40%;\n");
      out.write("  width: auto;\n");
      out.write("  padding: 16px;\n");
      out.write("  margin-top: -50px;\n");
      out.write("  color: white;\n");
      out.write("  font-weight: bold;\n");
      out.write("  font-size: 20px;\n");
      out.write("  border-radius: 0 3px 3px 0;\n");
      out.write("  user-select: none;\n");
      out.write("  -webkit-user-select: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Position the \"next button\" to the right */\n");
      out.write(".next {\n");
      out.write("  right: 0;\n");
      out.write("  border-radius: 3px 0 0 3px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* On hover, add a black background color with a little bit see-through */\n");
      out.write(".prev:hover,\n");
      out.write(".next:hover {\n");
      out.write("  background-color: rgba(0, 0, 0, 0.8);\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("/* Slideshow container */\n");
      out.write(".slideshow-container {\n");
      out.write("  max-width: 1000px;\n");
      out.write("  position: relative;\n");
      out.write("  margin: auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Container for image text */\n");
      out.write(".caption-container {\n");
      out.write("  text-align: center;\n");
      out.write("  background-color: #222;\n");
      out.write("  padding: 2px 16px;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Caption text */\n");
      out.write(".text {\n");
      out.write("  color: #f2f2f2;\n");
      out.write("  font-size: 15px;\n");
      out.write("  padding: 8px 12px;\n");
      out.write("  position: absolute;\n");
      out.write("  bottom: 8px;\n");
      out.write("  width: 100%;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body style=\"font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;\" background=\"19604.jpg\">\n");
      out.write(" \n");
      out.write("    <div class=\"icon-bar\">\n");
      out.write("  <a href=\"https://www.facebook.com/\" class=\"facebook\"><i class=\"fa fa-facebook\"></i></a> \n");
      out.write("  <a href=\"https://twitter.com/\" class=\"twitter\"><i class=\"fa fa-twitter\"></i></a> \n");
      out.write("  <a href=\"#\" class=\"google\"><i class=\"fa fa-google\"></i></a> \n");
      out.write("  <a href=\"https://www.linkedin.com/\" class=\"linkedin\"><i class=\"fa fa-linkedin\"></i></a>\n");
      out.write("  <a href=\"https://www.youtube.com/\" class=\"youtube\"><i class=\"fa fa-youtube\"></i></a> \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    <div class=\"hero-image\">\n");
      out.write("  <div class=\"hero-text\">\n");
      out.write("    <h1 style=\"font-size:50px\">Art of Helping</h1>\n");
      out.write("    <p>The all in one web site for helping people in need</p>\n");
      out.write("    <a href=\"about.jsp\"><button>About Art of Helping</button></a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    <div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("        <a href=\"admin.jsp\" id=\"login\">Admin Login</a>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("        <a href=\"donate.jsp\" id=\"donate\">Donate</a>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("    <br><br><br>\n");
      out.write("    <center>\n");
      out.write("<div class=\"slideshow-container\" style=\"width:60%;\">\n");
      out.write("<div class=\"mySlides fade\">\n");
      out.write("  <div class=\"numbertext\"></div>\n");
      out.write("  <img src=\"2000px-India_climatic_disaster_risk_map_en.svg.png\" style=\"width:70%\">\n");
      out.write("  <div class=\"text\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"mySlides fade\">\n");
      out.write("  <div class=\"numbertext\"></div>\n");
      out.write("  <img src=\"38a4d2918ca70b19da26c0ea4a4ef4ac-Disaster.jpg\" style=\"width:70%\">\n");
      out.write("  <div class=\"text\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"mySlides fade\">\n");
      out.write("  <div class=\"numbertext\"></div>\n");
      out.write("  <img src=\"Save-Earth.jpg\" style=\"width:70%\">\n");
      out.write("  <div class=\"text\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</div></center>\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("<div style=\"text-align:center\">\n");
      out.write("  <span class=\"dot\"></span> \n");
      out.write("  <span class=\"dot\"></span> \n");
      out.write("  <span class=\"dot\"></span> \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<br><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("var slideIndex = 0;\n");
      out.write("showSlides();\n");
      out.write("\n");
      out.write("function showSlides() {\n");
      out.write("  var i;\n");
      out.write("  var slides = document.getElementsByClassName(\"mySlides\");\n");
      out.write("  var dots = document.getElementsByClassName(\"dot\");\n");
      out.write("  for (i = 0; i < slides.length; i++) {\n");
      out.write("    slides[i].style.display = \"none\";  \n");
      out.write("  }\n");
      out.write("  slideIndex++;\n");
      out.write("  if (slideIndex > slides.length) {slideIndex = 1}    \n");
      out.write("  for (i = 0; i < dots.length; i++) {\n");
      out.write("    dots[i].className = dots[i].className.replace(\" active\", \"\");\n");
      out.write("  }\n");
      out.write("  slides[slideIndex-1].style.display = \"block\";  \n");
      out.write("  dots[slideIndex-1].className += \" active\";\n");
      out.write("  setTimeout(showSlides, 2000); // Change image every 2 seconds\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("        \n");
      out.write("</body>\n");
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
