<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:master-page selectedMainMenuItemCode="${selectedMainMenuItemCode}" selectedLeftMenuItemCode="${selectedLeftMenuItemCode}" locale="${userLocale}">

	<script src="resources/js/products.js"></script>

	<script>
		var gridColNames = ["<spring:message code="products_grid_id" />",
							"<spring:message code="products_grid_name" />",
							"<spring:message code="products_grid_price" />",
							"Timestamp"];
		var gridCaption = "<spring:message code="products_grid_caption" />";
	</script>

	<div class="dataGrid" id="dataGrid">
		<button id="addBtn"><spring:message code="jqgrid_add" /></button>
		<button id="editBtn"><spring:message code="jqgrid_edit" /></button>
		<button id="deleteBtn"><spring:message code="jqgrid_delete" /></button>
		<button id="searchBtn"><spring:message code="jqgrid_search" /></button>
		<button id="refreshBtn"><spring:message code="jqgrid_refresh" /></button>

		<span id="error-message" class="error-message"></span>
		<br>
		<br>

		<!-- jqGrid is injected into this DIV.-->
		<table id="dataTable"></table>
		<!-- The navigator is injected into this DIV.-->
		<div id="pagingDiv"></div>
	</div>

	<div id="selectRowMessage" title="<spring:message code="jqgrid_select_row_message_title" />">
		<p><spring:message code="jqgrid_select_row_message" /></p>
	</div>

</t:master-page>