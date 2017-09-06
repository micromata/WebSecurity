<%@ page import="java.io.File" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.util.Scanner" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>

<%
    File file = new File("xssJquery");

    String clear = request.getParameter("clear");
    if(clear != null && file.exists() == true) {
        file.delete();
    }

    String userPersist = request.getParameter("options");
    if(userPersist != null) {
        FileWriter fw = new FileWriter(file);
        fw.write(userPersist);
        fw.flush();
        fw.close();
    }

  if(file.exists() == true) {
      String optionsStr = new Scanner( file ).useDelimiter("\\n").next();
      request.setAttribute("options",optionsStr.split(","));
  }
%>

<div class="jumbotron">
    <h1>XSS trotz escaping Beispiel</h1>

     Ausgabe wird sauber escaped, aber ein jQuery-Plugin macht das wieder zunichte.


</div>

<pre>
  <code>
      &lt;select id="xssSelect"&gt;
        &lt;c:forEach items="&#36;{options}" var="option"&gt;
          &lt;option value="&lt;c:out value="&#36;{option}" /&gt;" &gt; &lt;c:out value="&#36;{option}" /&gt; &lt;/option&gt;
        &lt;/c:forEach&gt;
      &lt;/select&gt;
  </code>
</pre>


<hr>

<p>
Fülle Das Formular mit:   <em>bannane,zitrone,ahlewurst&lt;script&gt;alert('Ist lecker');&lt;/script&gt;</em> aus um die Checkboxes zu generieren.
</p>
<form class="form-inline well">
    <input class="span" type="text"  placeholder="Optionen"  id="optionsInput"/>
    <button type="button" onclick="window.location='xssJqueryBypass.jsp?options='+$('#optionsInput').val()" class="btn">Ok</button>
</form>

<h4>Ausgabe ist dann:</h4>

<div class="well">
    <div class="alert alert-success">
        <select id="xssSelect">
            <c:forEach items="${options}" var="option">
                <option value="<c:out value="${option}" />" > <c:out value="${option}" /> </option>
            </c:forEach>
        </select>
    </div>
</div>

<p>
Alles sauber escaped super :)
Nun wird das select mal mit einem kleinem Jquery-Plugin getuned, damit es besser aussieht.
</p>
<a href="xssJqueryBypass.jsp?makeItBlingBling=true" class="btn btn-danger">Make it Bling Bling</a>

<hr>

<c:if test="${not empty param.makeItBlingBling}">
  <link rel="stylesheet" href="xssJqueryBypassFiles/jquery.ui.selectmenu.css"/>
  <script src="xssJqueryBypassFiles/jquery.ui.selectmenu.js" type="text/javascript"></script>
  <script>
    $('#xssSelect').selectmenu({style:'popup'});
  </script>

  <div class="alert alert-danger">
    Nur durch Aufrufen eines JqueryUi-Plugins  auf das Select wurde unser Escaping ausgehebelt.<br />
    Ärgerlich ist hier, das das Plugin sowas eigendlich verhindern kann, diese Option aber default ausgeschaltet ist :(.
    <pre>
    &lt;script&gt;
        $('#xssSelect').selectmenu({style:'popup'});
    &lt;/script&gt;
    </pre>
  </div>
</c:if>



<div class="well">

    <h3>Wieso ist das schlimm ?</h3>

    <p>
       Diese Lücke wird von Tools nicht endeckt. Da man escaped hat denkt man, das man auf der sicheren Seite ist.<br />>
       Wenn nun nachträglich über irgendein Javascript das Escaping ausgehebelt wird, ist das schwer zu finden.
    </p>
</div>


<%@include file="../footer.jsp" %>