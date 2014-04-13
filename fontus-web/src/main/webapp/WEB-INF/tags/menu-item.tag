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
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@attribute name="itemCode" required="true" type="java.lang.String"%>
<%@attribute name="selectedItemCode" required="true" type="java.lang.String"%>
<%@attribute name="url" required="true" type="java.lang.String"%>

<li ${itemCode == selectedItemCode ? 'class=\'selected\'' : ''}><a href="${url}"><spring:message code="${itemCode}" /></a></li>
