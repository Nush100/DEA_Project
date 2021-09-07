package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class itickets_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Raleway\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                background-image: url(\"images/3.jpg\"); \n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("            }\n");
      out.write("            .myLink {display: none}\n");
      out.write("        </style> \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <h1>Tickets</h1>\n");
      out.write("        <a href=\"index.html\">home</a>\n");
      out.write("        \n");
      out.write("        <div class=\"w3-content\" style=\"max-width:1100px;\">\n");
      out.write("            <div class=\"w3-container\">\n");
      out.write("                 <div class=\"w3-panel w3-padding-16 w3-opacity w3-card w3-hover-opacity-off\">\n");
      out.write("                     <h2>Get the best offers first!</h2>\n");
      out.write("                 <p>Book your Ticket.</p>\n");
      out.write("                 <form action=\"./BookTickets\" method=\"post\">\n");
      out.write("                     <table border=\"0\"> \n");
      out.write("                         <tr>\n");
      out.write("                             <td><label>Ticket ID</label></td>\n");
      out.write("                             <td> : <input type=\"text\" name=\"tick\" placeholder=\"Ticket ID\" value=\"\"></td>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr>\n");
      out.write("                             <td><label>Email</label></td>\n");
      out.write("                             <td> : <input type=\"text\" name=\"email\" placeholder=\"valid email address\" value=\"\"></td>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr>\n");
      out.write("                             <td><label> Last Name </label> </td>\n");
      out.write("                             <td> : <input type=\"text\" name=\"lname\" placeholder=\"as per passport\" value=\"\"></td>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr>\n");
      out.write("                             <td><label>Contact </label></td>\n");
      out.write("                             <td> : <input type=\"text\" name=\"contact\" placeholder=\"valied phone number\" value=\"\"></td>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr>\n");
      out.write("                             <td><label>Flight</label></td>\n");
      out.write("                             <td> : <input type=\"text\" name=\"flight\" placeholder=\"FlightID\" value=\"\" ></td>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr>\n");
      out.write("                             <td><label>Start</label></td>\n");
      out.write("                             <td> : <input type=\"text\" name=\"start\" placeholder=\"Start\" value=\"\" ></td>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr>\n");
      out.write("                             <td><label>Destination</label></td>\n");
      out.write("                             <td> : <input type=\"text\" name=\"des\" placeholder=\"Destination\"></td>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr>\n");
      out.write("                             <td><center><input type=\"reset\" class=\"w3-btn w3-teal w3-margin-top\" value=\"Reset\"></center></td>\n");
      out.write("                             <td><center><input class=\"w3-button w3-red w3-margin-top\" type=\"submit\" value=\"Book\"></center></td>\n");
      out.write("                         </tr> \n");
      out.write("                     </table>\n");
      out.write("                 </form>\n");
      out.write("                 </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
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
