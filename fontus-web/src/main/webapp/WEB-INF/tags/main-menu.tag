<%@tag description="Page main menu" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@attribute name="selectedItemCode" required="true" type="java.lang.String"%>

<div class="b-main-menu">
	<ul class="menu">
		<t:menu-item itemCode="main_menu_products_and_orders" selectedItemCode="${selectedItemCode}" url="products"></t:menu-item>
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
