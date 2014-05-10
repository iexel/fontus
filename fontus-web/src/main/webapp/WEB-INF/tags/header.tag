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
<%@tag description="Page header" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
			<li class="login-menu-item"><a href="login"><spring:message code="header_menu_login" /></a></li>
		</sec:authorize>
		<sec:authorize access="not isAnonymous()">
			<li class="login-menu-item"><a href="logout"><spring:message code="header_menu_logout" />: <c:out value="${userName}" /></a></li>
		</sec:authorize>

		<li><a href="error/under-construction"><spring:message code="header_menu_help" /></a></li>
		<li><a href="about"><spring:message code="header_menu_about" /></a></li>
		<li class="last-menu-item"><a href="error/under-construction"><spring:message code="header_menu_contacts" /></a></li>
	</ul>
</div>
