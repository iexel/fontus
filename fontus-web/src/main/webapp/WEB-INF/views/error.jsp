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
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
<title>Fontus</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0; user-scalable=0;" />

<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<link rel="shortcut icon" href="resources/img/logo.ico" />

<link rel="stylesheet" type="text/css" href="resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
</head>

<body class="b-error-page">
	<div>
		<c:choose>
			<c:when test="${errorId == 'under-construction'}">
				<img alt="<spring:message code="error_under_construction_alt" />" src="resources/img/under-construction.png">
				<spring:message code="error_under_construction" />&nbsp;
				<a href="javascript:history.go(-1)"><spring:message code="error_back" /></a>
			</c:when> 
			<c:when test="${errorId == 'session-expired'}">
				<img alt="<spring:message code="error_alt" />" src="resources/img/session-expired.svg">
				<spring:message code="error_session_expired" />&nbsp;
				<a href="about"><spring:message code="error_home" /></a>
			</c:when>
			<c:otherwise>
				<img alt="<spring:message code="error_alt" />" src="resources/img/error.png">
				<spring:message code="${fn:replace(errorId, '-', '_')}" />&nbsp; 
				<a href="about"><spring:message code="error_home" /></a>
			</c:otherwise>  
		</c:choose>
	</div>
</body>
</html>
