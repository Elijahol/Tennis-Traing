/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-08-14 13:53:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>LoginPage</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/index.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/login.css\">\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery-3.3.1.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!--导航-->\r\n");
      out.write("<nav class=\"vport-nav\">\r\n");
      out.write("    <a href=\"#\" class=\"logo\"></a>\r\n");
      out.write("    <div class=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("        <ul>\r\n");
      out.write("            <li><a href=\"#\">Tennis Course</a></li>\r\n");
      out.write("            <li><a href=\"#\">Shopping</a></li>\r\n");
      out.write("            <li><a href=\"#\">News</a></li>\r\n");
      out.write("            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/rest/page/login\">Sign up</a></li>\r\n");
      out.write("            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/rest/page/login\">Log in </a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<section class=\"login-signup\">\r\n");
      out.write("    <form id=\"form1\" action=\"\" class=\"login-form\" method=\"post\">\r\n");
      out.write("        <article class=\"logbt\">Log in</article>\r\n");
      out.write("        <article class=\"signbt\">Sign up</article>\r\n");
      out.write("        <div class=\"error\" id=\"error-email1\"></div>\r\n");
      out.write("        <input type=\"email\" name=\"email\" placeholder=\"Email\" required>\r\n");
      out.write("        <span class=\"error\" id=\"error-password\"></span>\r\n");
      out.write("        <input type=\"password\" name=\"password\" placeholder=\"Password\" required pattern=\".*[A-Z].*\">\r\n");
      out.write("        <input type=\"button\" class=\"button\" value=\"Submit\">\r\n");
      out.write("    </form>\r\n");
      out.write("    <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/rest/customer/register\" class=\"signup-form\" method=\"post\">\r\n");
      out.write("        <article class=\"logbt\">Log in</article>\r\n");
      out.write("        <article class=\"signbt\">Sign up</article>\r\n");
      out.write("        <span class=\"error\" id=\"error-email2\"></span>\r\n");
      out.write("        <input type=\"email\" name=\"email\" placeholder=\"Email\" required>\r\n");
      out.write("        <span class=\"error\" id=\"error-password\"></span>\r\n");
      out.write("        <input type=\"password\" name=\"password\" placeholder=\"Password\" required pattern=\".*[A-Z].*\">\r\n");
      out.write("        <input type=\"text\" name=\"username\" placeholder=\"Username\" required>\r\n");
      out.write("        <div class=\"gender\">\r\n");
      out.write("            <div class=\"gender1\">\r\n");
      out.write("                <input id=\"gender1\" type=\"radio\" name=\"gender\" value=\"1\" required>\r\n");
      out.write("                <label for=\"gender1\">Male</label>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"gender2\">\r\n");
      out.write("                <input id=\"gender2\" type=\"radio\" name=\"gender\" value=\"0\" required>\r\n");
      out.write("                <label for=\"gender2\">Female</label>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"user-type\">\r\n");
      out.write("            <div class=\"type1\">\r\n");
      out.write("                <input id=\"type1\" type=\"radio\" name=\"type\" value=\"2\">\r\n");
      out.write("                <label for=\"type1\">Student</label>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"type2\">\r\n");
      out.write("                <input id=\"type2\" type=\"radio\" name=\"type\" value=\"1\">\r\n");
      out.write("                <label for=\"type2\">Trainer</label>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <input type=\"submit\" class=\"button\" value=\"Submit\">\r\n");
      out.write("        \r\n");
      out.write("    </form>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("    $(\"input[name=email]\").on('invalid',function () {\r\n");
      out.write("        this.setCustomValidity(\"Please enter the correct email\");\r\n");
      out.write("    });\r\n");
      out.write("    $(\"input[name=password]\").on('invalid',function () {\r\n");
      out.write("        this.setCustomValidity(\"Please enter the correct password\");\r\n");
      out.write("    });\r\n");
      out.write("    $(\"input[name=username]\").on('invalid',function () {\r\n");
      out.write("        this.setCustomValidity(\"Please enter the username\");\r\n");
      out.write("    });\r\n");
      out.write("    /*change log in or sign up*/\r\n");
      out.write("    $(\".logbt\").on('click', function () {\r\n");
      out.write("        $(\".login-form\").css(\"display\", \"block\");\r\n");
      out.write("        $(\".signup-form\").css(\"display\", \"none\");\r\n");
      out.write("    })\r\n");
      out.write("    $(\".signbt\").on('click', function () {\r\n");
      out.write("        $(\".login-form\").css(\"display\", \"none\");\r\n");
      out.write("        $(\".signup-form\").css(\"display\", \"block\");\r\n");
      out.write("    })\r\n");
      out.write("\r\n");
      out.write("    /*validate information*/\r\n");
      out.write("    $(\".signup-form input[name=email]\").on('blur',function () {\r\n");
      out.write("    \tvar $value = $(this).val();\r\n");
      out.write("    \tif($value != \"\"){\r\n");
      out.write("\t        $.post(\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/rest/customer/checkEmail\", {\"email\":$value}, function (res) {\r\n");
      out.write("\t        \t\r\n");
      out.write("\t            if (res == 1) {\r\n");
      out.write("\t                $(\"#error-email2\").text(\"The email has been registered\");\r\n");
      out.write("\t                $(\"#error-email2\").css(\"display\", \"block\");\r\n");
      out.write("\t                setTimeout(function () {\r\n");
      out.write("\t                    $(\"#error-email2\").css(\"display\", \"none\");\r\n");
      out.write("\t                }, 2000)\r\n");
      out.write("\t                $(\".signup-form input[type=submit]\").attr(\"disabled\", true);\r\n");
      out.write("\t            }else{\r\n");
      out.write("\t            \t$(\".signup-form input[type=submit]\").attr(\"disabled\", false);\r\n");
      out.write("\t            }\r\n");
      out.write("\t        })\r\n");
      out.write("    \t}\r\n");
      out.write("    })\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("    $(\".login-form .button\").click(function () {\r\n");
      out.write("    \tvar form = new FormData(document.getElementById(\"form1\"));\r\n");
      out.write("       $.ajax({\r\n");
      out.write("            url:'");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/rest/customer/login',\r\n");
      out.write("            type: 'post',\r\n");
      out.write("            data:form,\r\n");
      out.write("            dataType: 'json',\r\n");
      out.write("            contentType:false,\r\n");
      out.write("            processData:false,\r\n");
      out.write("            success: function(res) {\r\n");
      out.write("            \tif (res == 1) {\r\n");
      out.write("                    $(\"#error-email1\").text(\"wrong email.\");\r\n");
      out.write("                    $(\"#error-email1\").css(\"display\", \"block\");\r\n");
      out.write("                    setTimeout(function () {\r\n");
      out.write("                        $(\"#error-email1\").css(\"display\", \"none\");\r\n");
      out.write("                    }, 2000)\r\n");
      out.write("                } else if (res == 2) {\r\n");
      out.write("                \talert(res);\r\n");
      out.write("                    $(\"#error-password\").text(\"wrong password.\");\r\n");
      out.write("                    $(\"#error-password\").css(\"display\", \"block\");\r\n");
      out.write("                    setTimeout(function () {\r\n");
      out.write("                        $(\"#error-password\").css(\"display\", \"none\");\r\n");
      out.write("                    }, 2000)\r\n");
      out.write("                }else if (res == 3) {\r\n");
      out.write("                \t$(\"#error-email1\").text(\"you have not activated your account\");\r\n");
      out.write("                    $(\"#error-email1\").css(\"display\", \"block\");\r\n");
      out.write("                    setTimeout(function () {\r\n");
      out.write("                        $(\"#error-email1\").css(\"display\", \"none\");\r\n");
      out.write("                    }, 2000)\r\n");
      out.write("                }else{\r\n");
      out.write("                \twindow.location.href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/rest/page/success\";\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        })\r\n");
      out.write("    })\r\n");
      out.write("\r\n");
      out.write("/*     $(\".signup-form .button\").click(function () {\r\n");
      out.write("        $.ajax({\r\n");
      out.write("            url:'',\r\n");
      out.write("            type: 'post',\r\n");
      out.write("            data:$('.signup-form').serialize(),\r\n");
      out.write("            dataType: 'json',\r\n");
      out.write("            success: function(res) {\r\n");
      out.write("                alert(res);\r\n");
      out.write("                \r\n");
      out.write("            }\r\n");
      out.write("        })\r\n");
      out.write("    }) */\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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