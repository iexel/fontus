<%--
Copyright 2014 iexel

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


--%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<title>Fontus</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2, minimum-scale=1" />

<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<link rel="shortcut icon" href="resources/img/logo.ico" />
<link rel="apple-touch-icon-precomposed" href="resources/img/logo.png"/>

<link rel="stylesheet" type="text/css" href="resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
</head>

<body class="b-login-page">

	<div class="login-form">
		<div class="error-message">
			<c:if test="${failed != null}">
				<spring:message code="login_page_login_failed_message" />
			</c:if>
		</div>

		<form method="POST" action="j_spring_security_check">
			<spring:message code="login_page_user_name" />:<br/>
			<input id="j_username" name="j_username" type="text" class="field" /><br/>
			<spring:message code="login_page_password" />:<br/>
			<input id="j_password" name="j_password" type="password" class="field" /><br/>
			<input type="submit" class="button" value="<spring:message code="login_page_submit_button" />" />
			<input type="button" class="button" onclick="location.href='about'" value="<spring:message code="login_page_back_button" />" /><br/>
		</form>

		<div class="tip-message"><spring:message code="login_page_tip_message" /></div>
	</div>

</body>
</html>