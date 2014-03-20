<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:master-page selectedMainMenuItemCode="${selectedMainMenuItemCode}" selectedLeftMenuItemCode="${selectedLeftMenuItemCode}" locale="${springMvcLocale}">

<div id=b-about-page>

<p>This page has been left with no content intentionally. The <code>Administration</code> tab is an example of an UI feature that is available/visible to authenticated and authorized users only (i.e. users who belong to a specific group). See <a href="products">this</a> page for a demo of the CRUD functionality.</p>

</div>

</t:master-page>