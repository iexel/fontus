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
<%@tag description="Page template tag" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<%@attribute name="selectedMainMenuItemCode" required="true" type="java.lang.String"%>
<%@attribute name="selectedLeftMenuItemCode" required="true" type="java.lang.String"%>
<%@attribute name="locale" required="true" type="java.util.Locale"%>

<!DOCTYPE html>
<html lang="${locale.language}">
<head>
<title>Fontus</title>
<meta charset="UTF-8" />
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<link rel="shortcut icon" href="resources/img/logo.ico" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/redmond/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>

<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jqgrid/4.5.4/css/ui.jqgrid.css" />
<script src="//cdn.jsdelivr.net/jqgrid/4.5.4/i18n/grid.locale-${userLocale.language}.js"></script>
<script src="//cdn.jsdelivr.net/jqgrid/4.5.4/jquery.jqGrid.min.js"></script>

<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
<script src="resources/js/common.js"></script>

<!--
Local (not CDN) libraries are not included in the distribution;
download them and place in appropriate directories before removing the comment from this block:

<script src="resources/js/libs/jquery/jquery-1.10.2.min.js"></script>

<link rel="stylesheet" type="text/css" href="resources/css/jquery-ui/redmond/jquery-ui-1.10.3.custom.min.css" />
<script src="resources/js/libs/jquery-ui/jquery-ui-1.10.3.custom.min.js"></script>

<link rel="stylesheet" type="text/css" href="resources/css/jqgrid/ui.jqgrid.css" />
<script src="resources/js/libs/jqgrid/i18n/grid.locale-${userLocale.language}.js"></script>
<script src="resources/js/libs/jqgrid/jquery.jqGrid.min.js"></script>
-->

</head>
<body>
	<div class="b-page-container">
		<div class="internal-container">
			<t:header userName="${userName}" />
			<t:main-menu selectedItemCode="${selectedMainMenuItemCode}" />
			<div class="b-panels">
				<t:left-panel selectedItemCode="${selectedLeftMenuItemCode}" selectedMainMenuItemCode="${selectedMainMenuItemCode}" />
				<div class="b-center-panel" id="b-center-panel">
					<div class="container">
						<jsp:doBody />
					</div>
				</div>
				<t:right-panel />
			</div>
			<t:footer />
		</div>
	</div>
</body>
</html>
