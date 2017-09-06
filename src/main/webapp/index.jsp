<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<div class="jumbotron">
    <h1>WebSecurity Projekt</h1>

    <p class="lead">Hier kann man die Auswirkungen von Xss und anderen WebSecurity Dingen betrachten !</p>

</div>

<hr>

<div class="row-fluid marketing">

    <ul id="myTab" class="nav nav-tabs">
        <li class="active"><a href="#overViewXss" data-toggle="tab">XSS</a></li>
        <li><a href="#overViewXssWoJs" data-toggle="tab">XSS Scriptless</a></li>
        <li><a href="#overViewCSRF" data-toggle="tab">CSRF</a></li>
        <li><a href="#overViewSqlInjection" data-toggle="tab">SQL</a></li>
    </ul>


    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="overViewXss">
          <%@include file="xssInclude.jsp" %>
        </div>
        <div class="tab-pane fade in active" id="overViewXssWoJs">
            <%@include file="xssWoJsInclude.jsp" %>
        </div>
        <div class="tab-pane fade in active" id="overViewCSRF">
            <%@include file="csrfInclude.jsp" %>
        </div>
        <div class="tab-pane fade in" id="overViewSqlInjection">
            <%@include file="databaseInclude.jsp" %>
        </div>
    </div>
</div>

<%@include file="footer.jsp" %>
