<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp" %>

<div class="jumbotron">
    <h1> Weiter Einfache XSS Beispiel</h1>
</div>

<h2>Evil MouseOver</h2>
<pre>
  <code>
      &lt;b onmouseover="jQuery(this).css('background-color','#&#36;{param.xss1}')"&gt;click me and get XSS&lt;/b&gt;
  </code>
</pre>
<div class="alert alert-info"><strong>Query:</strong>otherSimpleXss.jsp?xss1=FF0000');alert('EVIL XSS</div>

<hr>

<h4>Ausgabe ist dann:</h4>
<div class="well">
    <div class="alert alert-error">
      <b onmouseover="jQuery(this).css('background-color','#${param.xss1}')">click me!</b>
    </div>

<a class="btn btn-danger" href="otherSimpleXss.jsp?xss1=FF0000');alert('EVIL XSS">XSS</a>
</div>

<hr />
<h4>Lösung:</h4>
  <pre>
    <code>&lt;b onmouseover="jQuery(this).css('background-color','#&lt;c:out value="&#36;{param.xss1Not}" /&gt;')"&gt;click me!&lt;/b&gt;</code>
    </pre>
<div class="well">
    <div class="alert alert-success">
      <b onmouseover="jQuery(this).css('background-color','#<c:out value="${param.xss1Not}" />')">click me!</b>
    </div>
    <a class="btn btn-success" href="otherSimpleXss.jsp?xss1Not=00FF00');alert('Das Hilft nichts >:>">XSS Not Working</a>
</div>

<h4>Einfache aber nicht gute Lösung, lieber eine Libary benutzen:</h4>

 <pre>
     <code>
&lt;%
  String xss1Not = request.getParameter("xss1Not");
  if(xss1Not != null) {
    xss1Not = xss1Not.replaceAll("'","&amp;lsquo;");
    request.setAttribute("xss1Not",xss1Not);
  }
%&gt;
&lt;b onmouseover="jQuery(this).css('background-color','&lt;c:out value="#&#36;{xss1Not}" /&gt;')"&gt;click me!&lt;/b&gt;
         </code>
    </pre>

    <%
        String xss1Not = request.getParameter("xss1Not");
        if(xss1Not != null) {
          xss1Not = xss1Not.replaceAll("'","&lsquo;");
          request.setAttribute("xss1Not",xss1Not);
        }
    %>
<div class="well">
    <div class="alert alert-success">
    <b onmouseover="jQuery(this).css('background-color','<c:out value="#${xss1Not}" />')">click me!</b>
        </div>
    </div>


<hr />
<h2>Attribut</h2>

<pre>
    <code>
        &lt;img src="&#36{param.xss2}" style="width: 100px; height: 100px; border: 2px solid #000000;"&gt;
    </code>

</pre>

<div class="alert alert-info"><strong>Query:</strong>otherSimpleXss.jsp?xss2=/bootstrap/img/glyphicons-halflings.png" onload=alert("XSS");</div>

<hr>

<h4>Ausgabe ist dann:</h4>

<div class="well">
    <a name="xss2Working"></a>
    <div class="alert alert-error">
        <img src="${param.xss2}" style="width: 100px; height: 100px; border: 2px solid #000000;">
    </div>
    <a class="btn btn-danger"
       href='otherSimpleXss.jsp?xss2=/jsAndCssLibs/bootstrap/img/glyphicons-halflings.png" onload="alert(window.location.href);#xss2Working'>XSS</a>
</div>

<hr/>

<h3>Lösung:</h3>
    <a name="xss2NotWorking"></a>
    <pre>
    <code>
        &lt;img src="&lt;c:out value="&#36{param.xss2Not}" /&gt;" style="width: 100px; height: 100px; border: 2px solid #000000;"&gt;
    </code>
    </pre>

<div class="well">
    <div class="alert alert-success">
        <img src="<c:out value="${param.xss2Not}" />" style="width: 100px; height: 100px; border: 2px solid #000000;">
    </div>
    <a class="btn btn-success"
       href='otherSimpleXss.jsp?xss2Not=/jsAndCssLibs/bootstrap/img/glyphicons-halflings.png" onload="alert(window.location.href);#xss2NotWorking'>XSS Not Working</a>
</div>

<h2>Das muss man noch testen:</h2>
<ul>
    <li>&lt;IMG SRC=j&amp;#X41vascript:alert('test2')&gt; sollte gehen und malware Scanner sollten das ignorieren</li>
    <li>&lt;META HTTP-EQUIV="refresh" CONTENT="0;url=data:text/html;base64,PHNjcmlwdD5hbGVydCgndGVzdDMnKTwvc2NyaXB0Pg"&gt; base64 encoded :)</li>
</ul>







<%@include file="../footer.jsp" %>