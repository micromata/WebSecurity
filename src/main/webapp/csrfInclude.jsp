<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="span12">
    <h4>Cross-site request forgery (CSRF)</h4>

    <p>Hier werden alle CSRF Empfehlungen und Beispiele gezeigt</p>

    <h5>Beschreibung</h5>

    <p>
    <blockquote>
        CSRF is an attack which forces an end user to execute unwanted actions on a web application in which he/she is
        currently authenticated. With a little help of social engineering (like sending a link via email/chat), an
        attacker may trick the users of a web application into executing actions of the attacker's choosing. A
        successful CSRF exploit can compromise end user data and operation in case of normal user. If the targeted end
        user is the administrator account, this can compromise the entire web application.
    </blockquote>
    </p>

    <h5>Referenzen:</h5>
    <ul>
        <li><a target="_blank" href="https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)">https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)</a>
        </li>
        <li><a target="_blank"
               href="https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)_Prevention_Cheat_Sheet">https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)_Prevention_Cheat_Sheet</a>
        </li>
    </ul>

    <h5>Beispiele</h5>

    <ul>
        <li><a href="csrf/simpleCsrf.jsp">Einfaches Beispiel</a></li>
    </ul>

    <h5>Regeln zum Verhindern</h5>

    <ul id="csrfTab" class="nav nav-tabs">
        <li class="active"><a href="#csrfRule1" data-toggle="tab">Regel 1</a></li>
        <li><a href="#csrfRule2" data-toggle="tab">Regel 2</a></li>
        <li><a href="#csrfRule3" data-toggle="tab">Regel 3</a></li>
    </ul>
    <div id="csrfTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="csrfRule1">
            <div class="alert alert-error">Post schützt nicht.</div>
            <p>
               Post kann man mit JavaScript nachbauen. Ajax :)
            </p>
        </div>
        <div class="tab-pane fade in" id="csrfRule2">
            <div class="alert alert-error">
                Token in Cookie halten funktioniert nicht.
            </div>
            <p>
                Ist keine gute Idee weil der Angreifer den Cookie anpassen kann.
            </p>
        </div>
        <div class="tab-pane fade in" id="csrfRule3">
            <div class="alert alert-error">
                In die Session ein Token schreiben und bei allen Daten verändernden Request, prüfen ob das Token
                übereinstimmt.
            </div>
            <p>
                <pre>
&lt;form action="/transfer.do" method="post"&gt;
  &lt;input type="hidden" name="CSRFToken"
    value="OWY4NmQwODE4ODRjN2Q2NTlhMmZlYWE...
           wYzU1YWQwMTVhM2JmNGYxYjJiMGI4MjJjZDE1ZDZ...
           MGYwMGEwOA=="&gt;
             …
&lt;/form&gt;
              </pre>
            </p>
        </div>
    </div>
</div>