<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="span12">
    <h4>Cross-site Scripting (XSS)</h4>

    <p>Hier werden alle XSS Empfehlungen und Beispiele gezeigt</p>

    <h5>Beschreibung</h5>

    <p>
    <blockquote>
        Cross-Site Scripting attacks are a type of injection problem, in which malicious scripts are injected into
        the otherwise benign and trusted web sites. Cross-site scripting (XSS) attacks occur when an attacker uses a
        web application to send malicious code, generally in the form of a browser side script, to a different end
        user. Flaws that allow these attacks to succeed are quite widespread and occur anywhere a web application
        uses input from a user in the output it generates without validating or encoding it.
        An attacker can use XSS to send a malicious script to an unsuspecting user. The end user’s browser has no
        way to know that the script should not be trusted, and will execute the script. Because it thinks the script
        came from a trusted source, the malicious script can access any cookies, session tokens, or other sensitive
        information retained by your browser and used with that site. These scripts can even rewrite the content of
        the HTML page.
    </blockquote>
    </p>

    <h5>Referenzen:</h5>
    <ul>
        <li><a target="_blank" href="https://www.owasp.org/index.php/XSS">https://www.owasp.org/index.php/XSS</a>
        </li>
        <li><a target="_blank" href="https://www.owasp.org/index.php/DOM_based_XSS_Prevention_Cheat_Sheet">https://www.owasp.org/index.php/DOM_based_XSS_Prevention_Cheat_Sheet</a></li>
        <li><a target="_blank" href="http://html5sec.org/">http://html5sec.org/</a></li>
    </ul>

    <h5>Beispiele</h5>

    <ul>
        <li><a href="xss/simpleXss.jsp?test=hier ist XSS moeglich">Einfaches Beispiel</a></li>
        <li><a href="xss/otherSimpleXss.jsp">Weiter einfache Beispiele</a></li>
        <li><a href="xss/persistentXss.jsp?clear=true">Persistent XSS</a></li>
        <li><a href="xss/xssJqueryBypass.jsp?clear=true">Escaping mit jquery Plugin ausgehebelt</a></li>
        <li><a href="xss/simpleXss.jsp?test=hier ist XSS mit CSS moeglich">Der Struts 2 Effekt</a></li>
    </ul>

    <h5>Regeln zum Verhindern</h5>

    <ul id="xssRulesMyTab" class="nav nav-tabs">
        <li class="active"><a href="#xssRule1" data-toggle="tab">Regel 1</a></li>
        <li><a href="#xssRule2" data-toggle="tab">Regel 2</a></li>
        <li><a href="#xssRule3" data-toggle="tab">Regel 3</a></li>
        <li><a href="#xssRule4" data-toggle="tab">Regel 4</a></li>
        <li><a href="#xssRule5" data-toggle="tab">Regel 5</a></li>
        <li><a href="#xssRule6" data-toggle="tab">Regel 6</a></li>
    </ul>
    <div id="xssRulesMyTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="xssRule1">
            <p>
            <div class="alert alert-error">Vertraue nie Daten die Du im HTML ausgibst. <strong>EGAL</strong> woher !</div>
            <pre>
&lt;script&gt;<b>...NEVER PUT UNTRUSTED DATA HERE...</b>&lt;/script&gt;   directly in a script

&lt;!--<b>...NEVER PUT UNTRUSTED DATA HERE...</b>--&gt;             inside an HTML comment

&lt;div <b>...NEVER PUT UNTRUSTED DATA HERE...</b>=test /&gt;       in an attribute name

&lt;<b>NEVER PUT UNTRUSTED DATA HERE...</b> href="/test" /&gt;   in a tag name

&lt;style&gt;<b>...NEVER PUT UNTRUSTED DATA HERE...</b>&lt;/style&gt;   directly in CSS
                    </pre>
            </p>
        </div>
        <div class="tab-pane fade in" id="xssRule2">
            <div class="alert alert-error">Daten die irgendwo im HTML Body, oder in anderen Tags, ausgegben werden, sollten immer escaped werden.</div>
            <p>
            <pre>
&lt;body&gt;<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>&lt;/body&gt;

&lt;div&gt;<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>&lt;/div&gt;

any other normal HTML elements
                  </pre>
            </p>
        </div>

        <div class="tab-pane fade in" id="xssRule3">
            <div class="alert alert-error">Daten die in Attributen ausgegben werden wie z.B. id="" name="" sollten immer escaped werden.</div>
            <p>
            <pre>
&lt;div attr=<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>&gt;content&lt;/div&gt;
inside UNquoted attribute

&lt;div attr='<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...'</b>&gt;content&lt;/div&gt;
inside single quoted attribute

&lt;div attr="<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>"&gt;content&lt;/div&gt;
inside double quoted attribute
                  </pre>
            </p>
        </div>
        <div class="tab-pane fade in" id="xssRule4">
            <div class="alert alert-error">Daten die in JavaScript ausgegben werden sollten immer escaped werden.</div>
            <div class="alert alert-error"><strong>NIE DATEN IN EVENT HTML ATTRIBUTEN AUSGEBEN wie onmouseover etc.!</strong></div>
            <p>
            <pre>
&lt;script&gt;alert('<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...'</b>)&lt;/script&gt;
inside a quoted string

&lt;script&gt;x='<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...'</b>&lt;/script&gt;
one side of a quoted expression

&lt;div onmouseover="x='<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...'</b>"&lt;/div&gt;
inside quoted event handler
                </pre>
            </p>

            <div class="alert alert-error">Achtung es gibt Funktionen da hilft escapen nicht.</div>
            <p>
            <pre>
&lt;script&gt;
  window.setInterval('<b>...EVEN IF YOU ESCAPE UNTRUSTED DATA YOU ARE XSSED HERE...'</b>);
&lt;/script&gt;
                </pre>
            </p>

            </p>

            <div class="alert alert-error">Achtung JSON !</div>
            <p>
            <pre>
&lt;script&gt;
  var initData = &lt;%= data.to_json&nbsp;%&gt;; // <b>Do NOT do this.</b>
&lt;/script&gt;

                </pre>
            <div class="alert alert-success">So kann man es machen !</div>
            <pre>
&lt;span style="display:none" id="init_data"&gt;
  &lt;%= data.to_json&nbsp;%&gt;  &lt;-- data is HTML escaped --&gt;
&lt;/span&gt;
                </pre>
            <pre>
&lt;script&gt;
  var jsonText = document.getElementById('init_data').innerHTML;  // unescapes the content of the span
  var initData = JSON.parse(jsonText);
&lt;/script&gt;
                </pre>
            </p>

        </div>
        <div class="tab-pane fade in" id="xssRule5">
            <div class="alert alert-error">Daten die in CSS ausgegeben werden, sollten immer escaped werden.</div>
            <p>
            <pre>
&lt;style&gt;selector { property&nbsp;: <b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>; } &lt;/style&gt;

&lt;style&gt;selector { property&nbsp;: "<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>"; } &lt;/style&gt;

&lt;span style="property&nbsp;: <b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE...</b>"&gt;text&lt;/style&gt;
             </pre>
            </p>
            <div class="alert alert-error">Das hilft nicht immer !</div>
            <p>
            <pre>
{ background-url&nbsp;: "javascript:alert(1)"; }  // and all other URLs
{ text-size: "expression(alert('XSS'))"; }   // only in IE
              </pre>
            </p>
        </div>
        <div class="tab-pane fade in" id="xssRule6">
            <div class="alert alert-error">Parameter in URLs immer escapen.</div>
            <p>
            <pre>&lt;a href="http://www.somesite.com?test=<b>...ESCAPE UNTRUSTED DATA BEFORE PUTTING HERE..."</b>&gt;link&lt;/a &gt;</pre>
            </p>
        </div>
    </div>

    <h5>Tools</h5>
    <ul>
        <li>Bibliotheken:
            <ul>
                <li><strong>JSTL: </strong> JSTL &lt;c:out value="" /&gt;</li>
                <li><strong>JAVA: </strong> ESAPI <a href="http://code.google.com/p/owasp-esapi-java/source/browse/trunk/src/main/java/org/owasp/esapi/codecs/HTMLEntityCodec.java">http://code.google.com/p/owasp-esapi-java/source/browse/trunk/src/main/java/org/owasp/esapi/codecs/HTMLEntityCodec.java</a> Kann CSS HTML und JS encoden.</li>
            </ul>
        </li>
        <li>Penetrationstests:
            <ul>
                <li><a href="https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project">OWASP ZAP kostenlos</a></li>
                <li><a href="http://www.portswigger.net/burp/">Burp</a></li>
            </ul>
        </li>
    </ul>

</div>