<%@ page import="de.micromata.talks.websecurity.DatabaseHandler" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>

<div class="jumbotron">
    <h1>Einfaches SQL Injection Beispiel</h1>

    Ausgabe eines Query Parameters ohne escaping mit jsp. Bitte nicht mit Chrome benutzen der Fängt den XSS Versuch.
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
        final ResultSet resultSet = DatabaseHandler.get().executeQuery("SELECT * FROM PUBLIC.USERS ORDER BY " + orderBy + " " + orderHow);
        while (resultSet.next()) {
    %>
    <tr>
        <td><%=resultSet.getString(1) %>
        </td>
        <td><%=resultSet.getString(2) %>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>

<pre>
  <code>
      &lt;label&gt;Parameter test: &lt;/label&gt; &#36;{param.test}
  </code>
</pre>

<div class="alert alert-info"><strong>Query:</strong>simpleXss.jsp?test=hier ist XSS moeglich&lt;script&gt;alert('Evil XSS');&lt;/script&gt;</div>

<hr>

<h4>Ausgabe ist dann:</h4>

<div class="well">
    <div class="alert alert-error">
        <label>Parameter test: </label>${param.test}
    </div>
    <a class="btn btn-danger" href="simpleXss.jsp?test=hier ist XSS moeglich<script>alert('Evil XSS');</script>">XSS</a>
</div>

<hr/>

<h3>Lösung:</h3>

<pre>
    <code>
        &lt;label&gt;Parameter test2: &lt;/label&gt; &lt;c:out value="&#36;{param.test2}" /&gt;
    </code>
    </pre>

<div class="well">
    <div class="alert alert-success">
        <label>Parameter test2: </label> <c:out value="${param.test2}"/>
    </div>
    <a class="btn btn-success" href="simpleXss.jsp?test2=hier ist kein XSS moeglich<script>alert('Evil XSS');</script>">XSS Not Working</a>
</div>


<hr>

<div class="well">

    <h3>Wie kann man das ausnutzen ?</h3>

    <p>
        Da diese Attacke nur ausgelöst wird, wenn man einen preparierten Link anklickt, wird sowas oft in Emails benutzt
        oder in Links auf Webseiten wo dann Script Code ausgeführt wird.
    </p>
</div>


<%@include file="../footer.jsp" %>