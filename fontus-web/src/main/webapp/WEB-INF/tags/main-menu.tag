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
<%@tag description="Page main menu" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@attribute name="selectedItemCode" required="true" type="java.lang.String"%>

<div class="b-main-menu">

	<div id="mobile-menu-button">
		<a href="#mobile-menu"><img src="resources/img/three-bar.png"></img></a>
	</div>
	<div class="page-title">
		<div><spring:message code="${selectedLeftMenuItemCode}" /></div>
	</div>

	<div style="display:none;">
		<nav id="mobile-menu">
			<ul>
				<li>
					<span><spring:message code="main_menu_products_and_invoices" /></span>
					<ul>
						<li><a href="products"><spring:message code="left_menu_products" /></a></li>
						<li><a href="invoices"><spring:message code="left_menu_invoices" /></a></li>
					</ul>
				</li>
				<li>
					<span><spring:message code="main_menu_administration" /></span>
					<ul>
						<li><a href="admin-task-a"><spring:message code="left_menu_administration_task_a" /></a></li>
						<li><a href="admin-task-b"><spring:message code="left_menu_administration_task_b" /></a></li>
					</ul>
				</li>
				<li>
					<span><spring:message code="main_menu_about" /></span>
					<ul>
						<li><a href="about"><spring:message code="left_menu_about" /></a></li>
						<li><a href="credits"><spring:message code="left_menu_credits" /></a></li>
					</ul>
				</li>
				<li>
					<span><spring:message code="main_menu_help" /></span>
					<ul>
						<li><a href="error/under-construction"><spring:message code="header_menu_help" /></a></li>
						<li><a href="error/under-construction"><spring:message code="header_menu_contacts" /></a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>


	<ul class="menu">
		<t:menu-item itemCode="main_menu_products_and_invoices" selectedItemCode="${selectedItemCode}" url="products"></t:menu-item>
		<sec:authorize access="hasRole('ROLE_ADMINISTRATOR')">
			<t:menu-item itemCode="main_menu_administration" selectedItemCode="${selectedItemCode}" url="admin-task-a"></t:menu-item>
		</sec:authorize>
		<t:menu-item itemCode="main_menu_about" selectedItemCode="${selectedItemCode}" url="about"></t:menu-item>
	</ul>
	<ul class="locale">
		<li><a href="${requestScope['javax.servlet.forward.request_uri']}?locale=en" title="English"><img alt="English" src="resources/img/flag-gb.png"></a></li>
		<li><a href="${requestScope['javax.servlet.forward.request_uri']}?locale=ru" title="Русский"><img alt="Russian" src="resources/img/flag-ru.png"></a></li>
	</ul>
</div>
