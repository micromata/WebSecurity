/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: jetty/9.4.6.v20170531
 * Generated at: 2017-09-06 09:11:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(8);
    _jspx_dependants.put("jar:file:/home/tuxburner/.m2/repository/org/apache/taglibs/taglibs-standard-impl/1.2.5/taglibs-standard-impl-1.2.5.jar!/META-INF/fn.tld", Long.valueOf(1425975070000L));
    _jspx_dependants.put("/xssWoJsInclude.jsp", Long.valueOf(1504678395000L));
    _jspx_dependants.put("file:/home/tuxburner/.m2/repository/org/apache/taglibs/taglibs-standard-impl/1.2.5/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1504688930000L));
    _jspx_dependants.put("jar:file:/home/tuxburner/.m2/repository/org/apache/taglibs/taglibs-standard-impl/1.2.5/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425975070000L));
    _jspx_dependants.put("/footer.jsp", Long.valueOf(1504678395000L));
    _jspx_dependants.put("/csrfInclude.jsp", Long.valueOf(1504678395000L));
    _jspx_dependants.put("/header.jsp", Long.valueOf(1504678395000L));
    _jspx_dependants.put("/xssInclude.jsp", Long.valueOf(1504678395000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

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

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Websecurity Projekt</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"/jsAndCssLibs/jquery-ui-1.10.0/css/ui-lightness/jquery-ui-1.10.0.custom.min.css\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"/jsAndCssLibs/bootstrap/css/bootstrap.min.css\"/>\n");
      out.write("\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("        body {\n");
      out.write("            padding-top: 20px;\n");
      out.write("            padding-bottom: 40px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("            /* Custom container */\n");
      out.write("        .container-narrow {\n");
      out.write("            margin: 0 auto;\n");
      out.write("            max-width: 700px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container-narrow > hr {\n");
      out.write("            margin: 30px 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("            /* Main marketing message and sign up button */\n");
      out.write("        .jumbotron {\n");
      out.write("            margin: 60px 0;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .jumbotron h1 {\n");
      out.write("            font-size: 72px;\n");
      out.write("            line-height: 1;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .jumbotron .btn {\n");
      out.write("            font-size: 21px;\n");
      out.write("            padding: 14px 24px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("            /* Supporting marketing content */\n");
      out.write("        .marketing {\n");
      out.write("            margin: 60px 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .marketing p + h4 {\n");
      out.write("            margin-top: 28px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <link href=\"/jsAndCssLibs/bootstrap/css/bootstrap-responsive.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"/jsAndCssLibs/bootstrap/js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"/jsAndCssLibs/jquery-ui-1.10.0/js/jquery-ui-1.10.0.custom.min.js\"></script>\n");
      out.write("    <script src=\"/jsAndCssLibs/bootstrap/js/bootstrap.js\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"container-narrow\">\n");
      out.write("\n");
      out.write("    <div class=\"masthead\">\n");
      out.write("        <h3 class=\"muted\"><a href=\"/index.jsp\">WebSecurity</a></h3>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <hr>");
      out.write("\n");
      out.write("<div class=\"jumbotron\">\n");
      out.write("    <h1>WebSecurity Projekt</h1>\n");
      out.write("\n");
      out.write("    <p class=\"lead\">Hier kann man die Auswirkungen von Xss und anderen WebSecurity Dingen betrachten !</p>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<hr>\n");
      out.write("\n");
      out.write("<div class=\"row-fluid marketing\">\n");
      out.write("\n");
      out.write("    <ul id=\"myTab\" class=\"nav nav-tabs\">\n");
      out.write("        <li class=\"active\"><a href=\"#overViewXss\" data-toggle=\"tab\">XSS</a></li>\n");
      out.write("        <li><a href=\"#overViewXssWoJs\" data-toggle=\"tab\">XSS Scriptless</a></li>\n");
      out.write("        <li><a href=\"#overViewCSRF\" data-toggle=\"tab\">CSRF</a></li>\n");
      out.write("        <li><a href=\"#overViewSqlInjection\" data-toggle=\"tab\">SQL</a></li>\n");
      out.write("    </ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div id=\"myTabContent\" class=\"tab-content\">\n");
      out.write("        <div class=\"tab-pane fade in active\" id=\"overViewXss\">\n");
      out.write("          ");
      out.write("\n");
      out.write("<div class=\"span12\">\n");
      out.write("    <h4>Cross-site Scripting (XSS)</h4>\n");
      out.write("\n");
      out.write("    <p>Hier werden alle XSS Empfehlungen und Beispiele gezeigt</p>\n");
      out.write("\n");
      out.write("    <h5>Beschreibung</h5>\n");
      out.write("\n");
      out.write("    <p>\n");
      out.write("    <blockquote>\n");
      out.write("        Cross-Site Scripting attacks are a type of injection problem, in which malicious scripts are injected into\n");
      out.write("        the otherwise benign and trusted web sites. Cross-site scripting (XSS) attacks occur when an attacker uses a\n");
      out.write("        web application to send malicious code, generally in the form of a browser side script, to a different end\n");
      out.write("        user. Flaws that allow these attacks to succeed are quite widespread and occur anywhere a web application\n");
      out.write("        uses input from a user in the output it generates without validating or encoding it.\n");
      out.write("        An attacker can use XSS to send a malicious script to an unsuspecting user. The end user’s browser has no\n");
      out.write("        way to know that the script should not be trusted, and will execute the script. Because it thinks the script\n");
      out.write("        came from a trusted source, the malicious script can access any cookies, session tokens, or other sensitive\n");
      out.write("        information retained by your browser and used with that site. These scripts can even rewrite the content of\n");
      out.write("        the HTML page.\n");
      out.write("    </blockquote>\n");
      out.write("    </p>\n");
      out.write("\n");
      out.write("    <h5>Referenzen:</h5>\n");
      out.write("    <ul>\n");
      out.write("        <li><a target=\"_blank\" href=\"https://www.owasp.org/index.php/XSS\">https://www.owasp.org/index.php/XSS</a>\n");
      out.write("        </li>\n");
      out.write("        <li><a target=\"_blank\" href=\"https://www.owasp.org/index.php/DOM_based_XSS_Prevention_Cheat_Sheet\">https://www.owasp.org/index.php/DOM_based_XSS_Prevention_Cheat_Sheet</a></li>\n");
      out.write("        <li><a target=\"_blank\" href=\"http://html5sec.org/\">http://html5sec.org/</a></li>\n");
      out.write("    </ul>\n");
      out.write("\n");
      out.write("    <h5>Beispiele</h5>\n");
      out.write("\n");
      out.write("    <ul>\n");
      out.write("        <li><a href=\"xss/simpleXss.jsp?test=hier ist XSS moeglich\">Einfaches Beispiel</a></li>\n");
      out.write("        <li><a href=\"xss/otherSimpleXss.jsp\">Weiter einfache Beispiele</a></li>\n");
      out.write("        <li><a href=\"xss/persistentXss.jsp?clear=true\">Persistent XSS</a></li>\n");
      out.write("        <li><a href=\"xss/xssJqueryBypass.jsp?clear=true\">Escaping mit jquery Plugin ausgehebelt</a></li>\n");
      out.write("        <li><a href=\"xss/simpleXss.jsp?test=hier ist XSS mit CSS moeglich\">Der Struts 2 Effekt</a></li>\n");
      out.write("    </ul>\n");
      out.write("\n");
      out.write("    <h5>Regeln zum Verhindern</h5>\n");
      out.write("\n");
      out.write("    <ul id=\"myTab\" class=\"nav nav-tabs\">\n");
      out.write("        <li class=\"active\"><a href=\"#xssRule1\" data-toggle=\"tab\">Regel 1</a></li>\n");
      out.write("        <li><a href=\"#xssRule2\" data-toggle=\"tab\">Regel 2</a></li>\n");
      out.write("        <li><a href=\"#xssRule3\" data-toggle=\"tab\">Regel 3</a></li>\n");
      out.write("        <li><a href=\"#xssRule4\" data-toggle=\"tab\">Regel 4</a></li>\n");
      out.write("        <li><a href=\"#xssRule5\" data-toggle=\"tab\">Regel 5</a></li>\n");
      out.write("        <li><a href=\"#xssRule6\" data-toggle=\"tab\">Regel 6</a></li>\n");
      out.write("    </ul>\n");
      out.write("    <div id=\"myTabContent\" class=\"tab-content\">\n");
      out.write("        <div class=\"tab-pane fade in active\" id=\"xssRule1\">\n");
      out.write("            <p>\n");
      out.write("            <div class=\"alert alert-error\">Vertraue nie Daten die Du im HTML ausgibst. <strong>EGAL</strong> woher !</div>\n");
      out.write("                    <pre>\n");
      out.write("&lt;script&gt;<b>...NEVER PUT UNTRUSTED DATA HERE...</b>&lt;/script&gt;   directly in a script\n");
      out.write("\n");
      out.write("&lt;!--<b>...NEVER PUT UNTRUSTED DATA HERE...</b>--&gt;             inside an HTML comment\n");
      out.write("\n");
      out.write("&lt;div <b>...NEVER PUT UNTRUSTED DATA HERE...</b>=test /&gt;       in an attribute name\n");
      out.write("\n");
      out.write("&lt;<b>NEVER PUT UNTRUSTED DATA HERE...</b> href=\"/test\" /&gt;   in a tag name\n");
      out.write("\n");
      out.write("&lt;style&gt;<b>...NEVER PUT UNTRUSTED DATA HERE...</b>&lt;/style&gt;   directly in CSS\n");
      out.write("                    </pre>\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"tab-pane fade in\" id=\"xssRule2\">\n");
      out.write("            <div class=\"alert alert-error\">Daten die irgendwo im HTML Body, oder in anderen Tags, ausgegben werden, sollten immer escaped werden.</div>\n");
      out.write("            <p>\n");
      out.write("                  <pre>\n");
      out.write("&lt;body&gt;<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>&lt;/body&gt;\n");
      out.write("\n");
      out.write("&lt;div&gt;<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>&lt;/div&gt;\n");
      out.write("\n");
      out.write("any other normal HTML elements\n");
      out.write("                  </pre>\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"tab-pane fade in\" id=\"xssRule3\">\n");
      out.write("            <div class=\"alert alert-error\">Daten die in Attributen ausgegben werden wie z.B. id=\"\" name=\"\" sollten immer escaped werden.</div>\n");
      out.write("            <p>\n");
      out.write("                  <pre>\n");
      out.write("&lt;div attr=<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>&gt;content&lt;/div&gt;\n");
      out.write("inside UNquoted attribute\n");
      out.write("\n");
      out.write("&lt;div attr='<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...'</b>&gt;content&lt;/div&gt;\n");
      out.write("inside single quoted attribute\n");
      out.write("\n");
      out.write("&lt;div attr=\"<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>\"&gt;content&lt;/div&gt;\n");
      out.write("inside double quoted attribute\n");
      out.write("                  </pre>\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"tab-pane fade in\" id=\"xssRule4\">\n");
      out.write("            <div class=\"alert alert-error\">Daten die in JavaScript ausgegben werden sollten immer escaped werden.</div>\n");
      out.write("            <div class=\"alert alert-error\"><strong>NIE DATEN IN EVENT HTML ATTRIBUTEN AUSGEBEN wie onmouseover etc.!</strong></div>\n");
      out.write("            <p>\n");
      out.write("                <pre>\n");
      out.write("&lt;script&gt;alert('<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...'</b>)&lt;/script&gt;\n");
      out.write("inside a quoted string\n");
      out.write("\n");
      out.write("&lt;script&gt;x='<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...'</b>&lt;/script&gt;\n");
      out.write("one side of a quoted expression\n");
      out.write("\n");
      out.write("&lt;div onmouseover=\"x='<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...'</b>\"&lt;/div&gt;\n");
      out.write("inside quoted event handler\n");
      out.write("                </pre>\n");
      out.write("            </p>\n");
      out.write("\n");
      out.write("            <div class=\"alert alert-error\">Achtung es gibt Funktionen da hilft escapen nicht.</div>\n");
      out.write("            <p>\n");
      out.write("                <pre>\n");
      out.write("&lt;script&gt;\n");
      out.write("  window.setInterval('<b>...EVEN IF YOU ESCAPE UNTRUSTED DATA YOU ARE XSSED HERE...'</b>);\n");
      out.write("&lt;/script&gt;\n");
      out.write("                </pre>\n");
      out.write("            </p>\n");
      out.write("\n");
      out.write("            </p>\n");
      out.write("\n");
      out.write("            <div class=\"alert alert-error\">Achtung JSON !</div>\n");
      out.write("            <p>\n");
      out.write("                <pre>\n");
      out.write("&lt;script&gt;\n");
      out.write("  var initData = &lt;%= data.to_json&nbsp;%&gt;; // <b>Do NOT do this.</b>\n");
      out.write("&lt;/script&gt;\n");
      out.write("\n");
      out.write("                </pre>\n");
      out.write("            <div class=\"alert alert-success\">So kann man es machen !</div>\n");
      out.write("                <pre>\n");
      out.write("&lt;span style=\"display:none\" id=\"init_data\"&gt;\n");
      out.write("  &lt;%= data.to_json&nbsp;%&gt;  &lt;-- data is HTML escaped --&gt;\n");
      out.write("&lt;/span&gt;\n");
      out.write("                </pre>\n");
      out.write("                <pre>\n");
      out.write("&lt;script&gt;\n");
      out.write("  var jsonText = document.getElementById('init_data').innerHTML;  // unescapes the content of the span\n");
      out.write("  var initData = JSON.parse(jsonText);\n");
      out.write("&lt;/script&gt;\n");
      out.write("                </pre>\n");
      out.write("            </p>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"tab-pane fade in\" id=\"xssRule5\">\n");
      out.write("            <div class=\"alert alert-error\">Daten die in CSS ausgegeben werden, sollten immer escaped werden.</div>\n");
      out.write("            <p>\n");
      out.write("              <pre>\n");
      out.write("&lt;style&gt;selector { property&nbsp;: <b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>; } &lt;/style&gt;\n");
      out.write("\n");
      out.write("&lt;style&gt;selector { property&nbsp;: \"<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>\"; } &lt;/style&gt;\n");
      out.write("\n");
      out.write("&lt;span style=\"property&nbsp;: <b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>\"&gt;text&lt;/style&gt;\n");
      out.write("             </pre>\n");
      out.write("            </p>\n");
      out.write("            <div class=\"alert alert-error\">Das hilft nicht immer !</div>\n");
      out.write("            <p>\n");
      out.write("              <pre>\n");
      out.write("{ background-url&nbsp;: \"javascript:alert(1)\"; }  // and all other URLs\n");
      out.write("{ text-size: \"expression(alert('XSS'))\"; }   // only in IE\n");
      out.write("              </pre>\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"tab-pane fade in\" id=\"xssRule6\">\n");
      out.write("            <div class=\"alert alert-error\">Parameter in URLs immer escapen.</div>\n");
      out.write("            <p>\n");
      out.write("             <pre>&lt;a href=\"http://www.somesite.com?test=<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...\"</b>&gt;link&lt;/a &gt;</pre>\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <h5>Tools</h5>\n");
      out.write("    <ul>\n");
      out.write("        <li>Bibliotheken:\n");
      out.write("            <ul>\n");
      out.write("                <li><strong>JSTL: </strong> JSTL &lt;c:out value=\"\" /&gt; </li>\n");
      out.write("                <li><strong>JAVA: </strong> ESAPI <a href=\"http://code.google.com/p/owasp-esapi-java/source/browse/trunk/src/main/java/org/owasp/esapi/codecs/HTMLEntityCodec.java\">http://code.google.com/p/owasp-esapi-java/source/browse/trunk/src/main/java/org/owasp/esapi/codecs/HTMLEntityCodec.java</a> Kann CSS HTML und JS encoden.</li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        <li>Penetrationstests:\n");
      out.write("          <ul>\n");
      out.write("              <li><a href=\"https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project\">OWASP ZAP kostenlos</a></li>\n");
      out.write("              <li><a href=\"http://www.portswigger.net/burp/\">Burp</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("    </ul>\n");
      out.write("\n");
      out.write("</div>");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"tab-pane fade in active\" id=\"overViewXssWoJs\">\n");
      out.write("            ");
      out.write("\n");
      out.write("<div class=\"span12\">\n");
      out.write("    <h4>Cross-site Scripting (XSS) Scriptless</h4>\n");
      out.write("\n");
      out.write("    <p>Hier werden XSS gezeigt die ohne Scripts gehen</p>\n");
      out.write("\n");
      out.write("    <h5>Beschreibung</h5>\n");
      out.write("\n");
      out.write("    <p>\n");
      out.write("    <blockquote>\n");
      out.write("        Es gibt eine sehr nette Präsentation von Mario Heiderich wie man XSS fahren kann <strong>OHNE</strong> Javasript anzuhaben.<br />\n");
      out.write("        Problem hierbei ist, das man diese Attacken schwer verhindern kann, indem man JS auf der Seite verbietet.\n");
      out.write("    </blockquote>\n");
      out.write("\n");
      out.write("    </p>\n");
      out.write("\n");
      out.write("    <h5>Referenzen:</h5>\n");
      out.write("    <ul>\n");
      out.write("        <li><a target=\"_blank\"  href=\"http://de.slideshare.net/x00mario/stealing-the-pie\">http://de.slideshare.net/x00mario/stealing-the-pie</a></li>\n");
      out.write("        <li><a target=\"_blank\" href=\"/xssScriptless/presentation.pdf\">Als PDF</a></li>\n");
      out.write("    </ul>\n");
      out.write("\n");
      out.write("    <h5>Beispiele</h5>\n");
      out.write("\n");
      out.write("    <ul>\n");
      out.write("        <li><a target=\"_blank\" href=\"/xssScriptless/keyloggerWithSvg.html\">KeyLogger mit SVG</a></li>\n");
      out.write("        <li><a target=\"_blank\" href=\"/xssScriptless/urlCssBruteForce.html\">SessionID mit CSS works in Firefox</a></li>\n");
      out.write("    </ul>\n");
      out.write("\n");
      out.write("</div>");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"tab-pane fade in active\" id=\"overViewCSRF\">\n");
      out.write("            ");
      out.write("\n");
      out.write("<div class=\"span12\">\n");
      out.write("    <h4>Cross-site request forgery (CSRF)</h4>\n");
      out.write("\n");
      out.write("    <p>Hier werden alle CSRF Empfehlungen und Beispiele gezeigt</p>\n");
      out.write("\n");
      out.write("    <h5>Beschreibung</h5>\n");
      out.write("\n");
      out.write("    <p>\n");
      out.write("    <blockquote>\n");
      out.write("        CSRF is an attack which forces an end user to execute unwanted actions on a web application in which he/she is\n");
      out.write("        currently authenticated. With a little help of social engineering (like sending a link via email/chat), an\n");
      out.write("        attacker may trick the users of a web application into executing actions of the attacker's choosing. A\n");
      out.write("        successful CSRF exploit can compromise end user data and operation in case of normal user. If the targeted end\n");
      out.write("        user is the administrator account, this can compromise the entire web application.\n");
      out.write("    </blockquote>\n");
      out.write("    </p>\n");
      out.write("\n");
      out.write("    <h5>Referenzen:</h5>\n");
      out.write("    <ul>\n");
      out.write("        <li><a target=\"_blank\" href=\"https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)\">https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)</a>\n");
      out.write("        </li>\n");
      out.write("        <li><a target=\"_blank\"\n");
      out.write("               href=\"https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)_Prevention_Cheat_Sheet\">https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)_Prevention_Cheat_Sheet</a>\n");
      out.write("        </li>\n");
      out.write("    </ul>\n");
      out.write("\n");
      out.write("    <h5>Beispiele</h5>\n");
      out.write("\n");
      out.write("    <ul>\n");
      out.write("        <li><a href=\"csrf/simpleCsrf.jsp\">Einfaches Beispiel</a></li>\n");
      out.write("    </ul>\n");
      out.write("\n");
      out.write("    <h5>Regeln zum Verhindern</h5>\n");
      out.write("\n");
      out.write("    <ul id=\"csrfTab\" class=\"nav nav-tabs\">\n");
      out.write("        <li class=\"active\"><a href=\"#csrfRule1\" data-toggle=\"tab\">Regel 1</a></li>\n");
      out.write("        <li><a href=\"#csrfRule2\" data-toggle=\"tab\">Regel 2</a></li>\n");
      out.write("        <li><a href=\"#csrfRule3\" data-toggle=\"tab\">Regel 3</a></li>\n");
      out.write("    </ul>\n");
      out.write("    <div id=\"csrfTabContent\" class=\"tab-content\">\n");
      out.write("        <div class=\"tab-pane fade in active\" id=\"csrfRule1\">\n");
      out.write("            <div class=\"alert alert-error\">Post schützt nicht.</div>\n");
      out.write("            <p>\n");
      out.write("               Post kann man mit JavaScript nachbauen. Ajax :)\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"tab-pane fade in\" id=\"csrfRule2\">\n");
      out.write("            <div class=\"alert alert-error\">\n");
      out.write("                Token in Cookie halten funktioniert nicht.\n");
      out.write("            </div>\n");
      out.write("            <p>\n");
      out.write("                Ist keine gute Idee weil der Angreifer den Cookie anpassen kann.\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"tab-pane fade in\" id=\"csrfRule3\">\n");
      out.write("            <div class=\"alert alert-error\">\n");
      out.write("                In die Session ein Token schreiben und bei allen Daten verändernden Request, prüfen ob das Token\n");
      out.write("                übereinstimmt.\n");
      out.write("            </div>\n");
      out.write("            <p>\n");
      out.write("                <pre>\n");
      out.write("&lt;form action=\"/transfer.do\" method=\"post\"&gt;\n");
      out.write("  &lt;input type=\"hidden\" name=\"CSRFToken\"\n");
      out.write("    value=\"OWY4NmQwODE4ODRjN2Q2NTlhMmZlYWE...\n");
      out.write("           wYzU1YWQwMTVhM2JmNGYxYjJiMGI4MjJjZDE1ZDZ...\n");
      out.write("           MGYwMGEwOA==\"&gt;\n");
      out.write("             …\n");
      out.write("&lt;/form&gt;\n");
      out.write("              </pre>\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"tab-pane fade in\" id=\"overViewSqlInjection\">\n");
      out.write("            SQL Injections\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<hr>\n");
      out.write("\n");
      out.write("<div class=\"footer\">\n");
      out.write("    <p>&copy; Micromata 2013</p>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
      out.write('\n');
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}