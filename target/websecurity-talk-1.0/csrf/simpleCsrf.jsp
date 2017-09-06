<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>

<div class="jumbotron">
    <h1>Einfaches CSRF Beispiel</h1>
    Formular wo eine Bestellung abgeschickt wird.
</div>


<div class="alert alert-info">Man nehme ein einfaches Formular.</div>

<pre>
  <code>
      &lt;form method="GET"&gt;
        &lt;label for="essen"&gt;Essen:&lt;/label&gt;
        &lt;select name="essen" id="essen"&gt;
          &lt;option value="5"&gt;Pizza 5€&lt;/option&gt;
          &lt;option value="10"&gt;Große Pizza 10€&lt;/option&gt;
        &lt;/select&gt;
        &lt;button type="submit" class="btn btn-primary"&gt;Abschicken&lt;/button&gt;
      &lt;/form&gt;
  </code>
</pre>

<hr>

<h4>Problem:</h4>

<a name="csrfWorking"></a>
<div class="well">
    <div class="alert alert-error">
        <form method="GET" action="simpleCsrf.jsp#csrfWorking">
            <label for="essen">Essen:</label>
            <select name="essen" id="essen">
                <option value="5">Pizza 5€</option>
                <option value="10">Große Pizza 10€</option>
            </select>
            <button type="submit" class="btn btn-primary">Abschicken</button>
        </form>
    </div>


    <c:if test="${not empty param.essen}">
      <div class="alert alert-warning">
          Vielen Dank für Ihre Bestellung das macht dann  <c:out value="${param.essen}"/> €
      </div>
    </c:if>


    <a class="btn btn-danger" href="simpleCsrf.jsp?essen=10#csrfWorking">CSRF</a>
    <a class="btn btn-inverse" href="simpleCsrf.jsp#csrfWorking">Reload ohne irgendwas</a>

</div>

<hr/>

<h3>Lösung:</h3>

    <pre>
    <code>
        &lt;form method="GET"&gt;
          &lt;label for="essen2"&gt;Essen:&lt;/label&gt;
          &lt;select name="essen2" id="essen2"&gt;
            &lt;option value="5"&gt;Pizza 5€&lt;/option&gt;
            &lt;option value="10"&gt;Große Pizza 10€&lt;/option&gt;
          &lt;/select&gt;
          <strong>&lt;input type="hidden" name="CSRFToken" value="tokenausdersession"&gt;</strong>
          &lt;button type="submit" class="btn btn-primary"&gt;Abschicken&lt;/button&gt;
        &lt;/form&gt;
    </code>
    </pre>
    <pre>
    <code>
        Im Code vom Backend dann sowas wie:
        if(CSRFToken.isEmpty() == false && CSRFToken == session.get('CSRFToken')) {
          mach tolle Magie
        } else {
          Fehler anzeigen
        }
    </code>
    </pre>

<a name="csrfNotWorking"></a>
<div class="well">
    <div class="alert alert-success">
        <form method="GET" action="simpleCsrf.jsp#csrfNotWorking">
            <label for="essen2">Essen:</label>
            <select name="essen2" id="essen2">
                <option value="5">Pizza 5€</option>
                <option value="10">Große Pizza 10€</option>
            </select>
            <label>CSRFToken:</label>
            <input type="text" name="CSRFToken" value="0123456789abcde" />
            <button type="submit" class="btn btn-primary">Abschicken</button>
        </form>
    </div>

    <c:if test="${not empty param.essen2}">
        <c:choose >
            <c:when test="${not empty param.CSRFToken and param.CSRFToken eq '0123456789abcde'}">
                <div class="alert alert-warning">
                    Vielen Dank für Ihre Bestellung das macht dann  <c:out value="${param.essen2}"/> €
                </div>
            </c:when>
            <c:otherwise>
                <div class="alert alert-warning">
                    Fehler !!!1!!!!
                </div>
            </c:otherwise>
        </c:choose>
    </c:if>

    <a class="btn btn-danger" href="simpleCsrf.jsp?essen2=10#csrfNotWorking">CSRF</a>
</div>


<hr>

<div class="well">
    <h3>Wie kann man das ausnutzen ?</h3>
    <p>
        Wie man sieht kann man mit einem URL Aufruf: simpleCsrf.jsp?essen=10 den Benutzer dazu bringen eine
        Bestellung abzugeben. So einen Link kann der Angreifer per mail verschicken.
    </p>
</div>


<%@include file="../footer.jsp" %>