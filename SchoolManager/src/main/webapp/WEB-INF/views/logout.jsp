<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Refresh" content="2;URL=index">
  <title>logout</title>
  <link href="css/style.css" rel="stylesheet">
  <link rel="icon" type="image/x-icon" href="ico/faviconSchoolManager.ico">
  <link rel="apple-touch-icon" sizes="180x180" href="./apple-touch-icon-180x180.png">
</head>

<body>
  <header>
    <h1>
  	 <fmt:message key="message.header" />
  	</h1>
  </header>

	<div id="data">
		<p>2秒後にログアウトします</p>
	</div>

	<footer>
		<fmt:message key="message.footer" />
	</footer>

</body>
</html>