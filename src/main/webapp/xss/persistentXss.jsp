<%@ page import="java.io.File" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.util.Scanner" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>

<%
    File file = new File("./target/userReq");

    String clear = request.getParameter("clear");
    if(clear != null && file.exists() == true) {
        file.delete();
    }

    String userPersist = request.getParameter("userPersist");
    if(userPersist != null) {
        FileWriter fw = new FileWriter(file);
        fw.write(userPersist);
        fw.flush();
        fw.close();
    }

  if(file.exists() == true) {
      String userPersistet = new Scanner( file ).useDelimiter("\\n").next();
      request.setAttribute("userName",userPersistet);
  }
%>

<div class="jumbotron">
    <h1>Persistent XSS Beispiel</h1>

    Ausgabe eines Query Parameters ohne escaping mit jsp. Bitte nicht mit Chrome benutzen der Fängt den XSS Versuch.


</div>

<pre>
  <code>
      &lt;label&gt;Benutzername: &lt;/label&gt; &#36;{userName}
  </code>
</pre>

<div class="alert alert-info"><strong>Als Benutzername:</strong>musterman &lt;script&gt;alert('Evil XSS');&lt;/script&gt;</div>

<hr>

<p>
Fülle Das Formular mit:   <em>musterman &lt;script&gt;alert('Evil XSS');&lt;/script&gt;</em> aus um ein XSS auszulösen.
</p>
<form class="form-inline well">
    <input type="text"  placeholder="Benutzername"  id="userNameInput"/>
    <button type="button" onclick="window.location='persistentXss.jsp?userPersist='+$('#userNameInput').val()" class="btn">Sign in</button>
</form>

Danach drücke den Knopf um die Seite neuzuladen ohne Parameter.
<a href="persistentXss.jsp" class="btn btn-inverse">Reload ohne irgendwas</a>

<h4>Ausgabe ist dann:</h4>

<div class="well">
    <div class="alert alert-error">
        <label>Benutzername: </label>${userName}
    </div>
</div>

<hr/>

    <h3>Lösung:</h3>

    <pre>
    <code>
        &lt;label&gt;Benutzername: &lt;/label&gt; &lt;c:out value="&#36;{userName}" /&gt;
    </code>
    </pre>

  <div class="well">
      <div class="alert alert-success">
          <label>Benutzername: </label> <c:out value="${userName}" />
      </div>
   </div>




<hr>

<div class="well">

    <h3>Wie kann man das ausnutzen ?</h3>

    <p>
        Diese XSS Lücke ist eine der fatalsten da Sie für alle Benutzer die die Seite Benutzen ausgeführt wird. Zum Beispiel der Benutzername in einem Forum.
    </p>
</div>


<%@include file="../footer.jsp" %>