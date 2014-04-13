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
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="resources/img/logo.ico" />
</head>

<body class="b-login-page">

	<div class="login-form">
		<div class="error-message">
			<c:if test="${failed != null}">
				<spring:message code="login_page_login_failed_message" />
			</c:if>
		</div>

		<form method="POST" action="j_spring_security_check">
			<table>
				<tr>
					<td><spring:message code="login_page_user_name" />: &nbsp;&nbsp;</td>
					<td><input name="j_username" type="text" value="" /></td>
				</tr>
				<tr>
					<td><spring:message code="login_page_password" />: &nbsp;&nbsp;</td>
					<td><input name="j_password" type="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" value="<spring:message code="login_page_submit_button" />" />
						<input type="button" onclick="location.href='about'" value="<spring:message code="login_page_back_button" />" />
					</td>
				</tr>
			</table>
		</form>

		<div class="tip-message">
			<spring:message code="login_page_tip_message" />
		</div>

	</div>

</body>
</html>