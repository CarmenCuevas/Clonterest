package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n");
      out.write("    <title>Clonterest</title>\r\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js\"></script>\r\n");
      out.write("    <!-- Bootstrap -->\r\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n");
      out.write("      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("    img {\r\n");
      out.write("      width: 100%\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-default navbar-fixed-top\">\r\n");
      out.write("  <div class=\"container-fluid\">\r\n");
      out.write("    <!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("    <div class=\"navbar-header\">\r\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\r\n");
      out.write("        <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("        <span class=\"icon-bar\"></span>\r\n");
      out.write("        <span class=\"icon-bar\"></span>\r\n");
      out.write("        <span class=\"icon-bar\"></span>\r\n");
      out.write("      </button>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Collect the nav links, forms, and other content for toggling -->\r\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("      <div class=\"navbar-form\">\r\n");
      out.write("        <div class=\"input-group\">\r\n");
      out.write("         <span class=\"input-group-addon\" id=\"basic-addon1\"><img src=\"img/logo1.jpg\" style=\"heigt: 20px; width: 20px\"></span>\r\n");
      out.write("               <select class=\"form-control\" id=\"formSel\">\r\n");
      out.write("                <option>Alimentos</option>\r\n");
      out.write("                <option>Animales</option>\r\n");
      out.write("                <option>Ciencia</option>\r\n");
      out.write("                <option>Coches</option>\r\n");
      out.write("                <option>Deportes</option>\r\n");
      out.write("                <option>Moda</option>\r\n");
      out.write("              </select>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\">\r\n");
      out.write("  Nuevo Clon\r\n");
      out.write("</button>\r\n");
      out.write("    </div><!-- /.navbar-collapse -->\r\n");
      out.write("  </div><!-- /.container-fluid -->\r\n");
      out.write("</nav><br /><br />\r\n");
      out.write("\r\n");
      out.write("<div class=\"container-fluid well\" id=\"mainCont\">\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Modal -->\r\n");
      out.write("<div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("  <div class=\"modal-dialog\">\r\n");
      out.write("    <div class=\"modal-content\">\r\n");
      out.write("      <div class=\"modal-header\">\r\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\r\n");
      out.write("        <h4 class=\"modal-title\" id=\"myModalLabel\">Nuevo Clon</h4>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-body\">\r\n");
      out.write("        \r\n");
      out.write("          <form name=\"Likes\" method=\"POST\" action =\"Respuesta.jsp\">\r\n");
      out.write("              \r\n");
      out.write("              <div class=\"form-group\">\r\n");
      out.write("                <label for=\"formNom\">Nombre</label>\r\n");
      out.write("                <input type=\"text\" name=\"nombre\" class=\"form-control\" id=\"formNom\">\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"form-group\">\r\n");
      out.write("                <label for=\"formURL\">Nombre</label>\r\n");
      out.write("                <input type=\"text\" name=\"url\" class=\"form-control\" id=\"formURL\">\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"form-group\">\r\n");
      out.write("                <label for=\"formURL\">Categoria</label>\r\n");
      out.write("                <select name=\"tipo\" class=\"form-control\">\r\n");
      out.write("             <option value=\"Alimentos\">Alimentos</option>\r\n");
      out.write("             <option value=\"Animales\">Animales</option>\r\n");
      out.write("             <option value=\"Ciencia\">Ciencia</option>\r\n");
      out.write("             <option value=\"Coches\">Coches</option>\r\n");
      out.write("             <option value=\"Deportes\">Deportes</option>\r\n");
      out.write("             <option value=\"Moda\">Moda</option>    \r\n");
      out.write("         </select>\r\n");
      out.write("              </div>              \r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-footer\">\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("        <input type=\"submit\" class=\"btn btn-primary\" value=\"Likes\" name=\"Likes\" id=\"Likes\">\r\n");
      out.write("        </form>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("$(\"#formSel\").change(function(){\r\n");
      out.write("\r\n");
      out.write("$.post( \"Consulta.jsp\", { tipo: $(\"#formSel\").val()})\r\n");
      out.write("  .done(function( data ) {\r\n");
      out.write("    $(\"#mainCont\").html(data);\r\n");
      out.write("  });\r\n");
      out.write("\r\n");
      out.write("})\r\n");
      out.write("\r\n");
      out.write("$(\".likebtn\").click(function(){\r\n");
      out.write("\r\n");
      out.write("$.post( \"MeteLike.jsp\", { nombre: $(this).attr(\"data-nomimg\")})\r\n");
      out.write("\r\n");
      out.write("$(this).find(\".badge\").html(+ $(this).html() + 1)\r\n");
      out.write("\r\n");
      out.write("})\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
