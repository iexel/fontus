<%@tag description="Page header" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@attribute name="userName" required="true" type="java.lang.String"%>

<div class="b-header">
	<div class="logo1">
		<a href="about"><spring:message code="header_title1" /></a>
	</div>
	<div class="logo2">
		<a href="about"><spring:message code="header_title2" /></a>
	</div>
	<ul>
		<sec:authorize access="isAnonymous()">
			<li><a href="login"><spring:message code="header_menu_login" /></a></li>
		</sec:authorize>
		<sec:authorize access="not isAnonymous()">
			<li><a href="logout"><spring:message code="header_menu_logout" />: ${userName}</a></li>
		</sec:authorize>

		<li><a href="error/under-construction"><spring:message code="header_menu_help" /></a></li>
		<li><a href="about"><spring:message code="header_menu_about" /></a></li>
		<li class="last-menu-item"><a href="error/under-construction"><spring:message code="header_menu_contact_us" /></a></li>
	</ul>
</div>
