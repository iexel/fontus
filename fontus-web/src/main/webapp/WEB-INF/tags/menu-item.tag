<%@tag description="Page main menu" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@attribute name="itemCode" required="true" type="java.lang.String"%>
<%@attribute name="selectedItemCode" required="true" type="java.lang.String"%>
<%@attribute name="url" required="true" type="java.lang.String"%>

<li ${itemCode == selectedItemCode ? 'class=\'selected\'' : ''}><a href="${url}"><spring:message code="${itemCode}" /></a></li>
