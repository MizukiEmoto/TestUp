<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成績登録画面</title>
<link href="css/style.css" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="ico/faviconSchoolManager.ico">
<link rel="apple-touch-icon" sizes="180x180"href="./apple-touch-icon-180x180.png">
</head>
<body>
	<header>
		<h1>
			<a href="menu"><fmt:message key="message.header" /></a>
		</h1>
		<h2>
			<a href="logout">ログアウト</a>
		</h2>
	</header>
	<div id="data">

		<p>登録する成績情報を入力してください</p>
		<form:form action="scoreInsertConfirm" modelAttribute="scoreInsert">
			<c:if test="${not empty errMsg}">
				<span class="error">${fn:escapeXml(errMsg)}</span>
			</c:if>
			<fieldset>
				<div class="cp_ipselect cp_sl01">
					<label>生徒名</label>
					<form:select path="StudentId">
						<form:options items="${studentInfo}" itemLabel="name"
							itemValue="id" />
					</form:select>
				</div>
				<div class="cp_ipselect cp_sl01">
					<label>テスト名</label>
					<form:select path="testId">
						<form:options items="${testInfo}" itemLabel="name" itemValue="id" />
					</form:select>
				</div>
				<div>
					<label>点数</label>
					<form:input path="score" />
				</div>
				<div class="cp_ipselect cp_sl01 date">
					<label>受験日</label>
					<form:select path="year">
						<form:options items="${years}" itemLabel="Text" itemValue="Number" />
					</form:select>
					<form:select path="month">
						<form:options items="${monthes}" itemLabel="Text"
							itemValue="Number" />
					</form:select>
					<form:select path="day">
						<form:options items="${days}" itemLabel="Text" itemValue="Number" />
					</form:select>
					<form:hidden path="dayFormat" />

				</div>
			</fieldset>
			<div>
				<form:button class="submit_btn">確認する</form:button>
			</div>
		</form:form>
		<div>
			<a href="menu">メニューへ戻る</a>
		</div>
	</div>
	<footer><fmt:message key="message.footer" /></footer>
</body>
</html>