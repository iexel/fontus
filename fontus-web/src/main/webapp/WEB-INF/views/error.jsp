<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
<title>Jump Boilerplate</title>
<meta charset="UTF-8">
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="resources/img/logo.ico" />
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
				<img alt="<spring:message code="error_alt" />" src="resources/img/session-expired.png">
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
