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
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<%@attribute name="selectedItemCode" required="true" type="java.lang.String"%>
<%@attribute name="selectedMainMenuItemCode" required="true" type="java.lang.String"%>

<div class="b-left-panel">
	<c:choose> 
		<c:when test="${selectedMainMenuItemCode == 'main_menu_about'}">
		</c:when>
		<c:when test="${selectedMainMenuItemCode == 'main_menu_products_and_invoices'}">
			<ul>
				<t:menu-item itemCode="left_menu_products" selectedItemCode="${selectedItemCode}" url="products"></t:menu-item>

				<t:menu-item itemCode="left_menu_invoices" selectedItemCode="${selectedItemCode}" url="invoices"></t:menu-item>
			</ul>
		</c:when>
		<c:when test="${selectedMainMenuItemCode == 'main_menu_administration'}">
			<ul>
				<t:menu-item itemCode="left_menu_administration_task_a" selectedItemCode="${selectedItemCode}" url="admin-task-a"></t:menu-item>

				<t:menu-item itemCode="left_menu_administration_task_b" selectedItemCode="${selectedItemCode}" url="admin-task-b"></t:menu-item>
			</ul>
		</c:when>
	</c:choose> 
	<div class="place-holder"></div>
</div>
