<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>

<div class="jumbotron">
    <h1>Einfaches XSS Beispiel</h1>

    Ausgabe eines Query Parameters ohne escaping mit jsp. Bitte nicht mit Chrome benutzen der Fängt den XSS Versuch.


</div>

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