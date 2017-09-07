<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="span12">
    <h4>SQL Injection</h4>

    <p>Hier werden alle SQL Injection Empfehlungen und Beispiele gezeigt</p>

    <h5>Beschreibung</h5>
    <p>
    <blockquote>
        A SQL injection attack consists of insertion or "injection" of a SQL query via the input data from the client to the application. A successful SQL injection exploit can read sensitive data from the database, modify database data (Insert/Update/Delete), execute administration operations on the database (such as shutdown the DBMS), recover the content of a given file present on the DBMS file system and in some cases issue commands to the operating system. SQL injection attacks are a type of injection attack, in which SQL commands are injected into data-plane input in order to effect the execution of predefined SQL commands.
    </blockquote>
    </p>

    <h5>Referenzen:</h5>
    <ul>
        <li><a target="_blank" href="https://www.owasp.org/index.php/SQL_Injection">https://www.owasp.org/index.php/SQL_Injection</a></li>
        <li><a target="_blank" href="https://de.wikipedia.org/wiki/SQL-Injection">https://de.wikipedia.org/wiki/SQL-Injection</a></li>
        <li><a target="_blank" href="https://www.w3schools.com/sql/sql_injection.asp">https://www.w3schools.com/sql/sql_injection.asp</a></li>
        <li><a target="_blank" href="https://www.owasp.org/index.php/SQL_Injection_Prevention_Cheat_Sheet">https://www.owasp.org/index.php/SQL_Injection_Prevention_Cheat_Sheet</a></li>
        <li><a target="_blank" href="http://breakthesecurity.cysecurity.org/2010/12/hacking-website-using-sql-injection-step-by-step-guide.html">http://breakthesecurity.cysecurity.org/2010/12/hacking-website-using-sql-injection-step-by-step-guide.html</a></li>
    </ul>

    <h5>Beispiele</h5>

    <ul>
        <li><a target="_blank" href="sqlInjection/sqlInjection.jsp">Einfache Beispiele</a></li>
    </ul>

    <h5>Regeln zum Verhindern</h5>

    <ul id="sqlTab" class="nav nav-tabs">
        <li class="active"><a href="#sqlRule1" data-toggle="tab">Regel 1</a></li>
        <li><a href="#sqlRule2" data-toggle="tab">Regel 2</a></li>
        <li><a href="#sqlRule3" data-toggle="tab">Regel 3</a></li>
        <li><a href="#sqlRule4" data-toggle="tab">Regel 4</a></li>
        <li><a href="#sqlRule5" data-toggle="tab">Regel 5</a></li>

    </ul>
    <div id="sqlTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="sqlRule1">
            <p>
            <div class="alert alert-error">Baue <strong>KEIN</strong> eigenes Database Framework.</div>
            </p>
        </div>
        <div class="tab-pane fade in" id="sqlRule2">
            <div class="alert alert-error">
                Wenn ein Query Paramerter braucht, immer prepared Statements nehmen.
                <strong>Am besten immer prepared Statements nehmen.</strong>
                Es kann auch helfen eine Whitelist der Parameter die übergeben werden darf zu führen.
            </div>
        </div>
        <div class="tab-pane fade in" id="sqlRule3">
            <div class="alert alert-error">
                Gutes Exception Handling betreiben. SQL Exceptions loggen und dem Benutzer eine generelle Fehlermeldung anzeigen.
            </div>
        </div>
        <div class="tab-pane fade in" id="sqlRule4">
            <div class="alert alert-error">
                Wenn man konkateniert sicher stellen das die Werte nicht vom User geändert werden können.
                Das gilt auch für HQL Statements.
            </div>
        </div>
        <div class="tab-pane fade in" id="sqlRule5">
            <div class="alert alert-error">
                Datenbank Zugriff einschränken.
            </div>
        </div>
    </div>

    <h5>Tools</h5>
    <ul>
        <li>Bibliotheken:
            <ul>
                <li>JPA/Hibernate/Eclipse Link</li>
                <li>Spring Data</li>
                <li>Ebean</li>
            </ul>
        </li>
        <li>Penetrationstests:
            <ul>
                <li><a target="_blank" href="https://www.owasp.org/index.php/Testing_for_SQL_Injection_(OTG-INPVAL-005)">https://www.owasp.org/index.php/Testing_for_SQL_Injection_(OTG-INPVAL-005)</a></li>
                <li><a target="_blank" href="http://sqlmap.org/">http://sqlmap.org/</a></li>
            </ul>
        </li>
    </ul>

</div>