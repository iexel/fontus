<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:master-page selectedMainMenuItemCode="${selectedMainMenuItemCode}" selectedLeftMenuItemCode="${selectedLeftMenuItemCode}" locale="${springMvcLocale}">

<div class=b-text-content>
	<p><spring:message code="invoices-page-content" arguments="products" /></p>
</div>

</t:master-page>