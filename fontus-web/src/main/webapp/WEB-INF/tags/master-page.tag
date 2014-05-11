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
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<%@attribute name="selectedMainMenuItemCode" required="true" type="java.lang.String"%>
<%@attribute name="selectedLeftMenuItemCode" required="true" type="java.lang.String"%>
<%@attribute name="locale" required="true" type="java.util.Locale"%>

<!DOCTYPE html>
<html lang="${userLocale.language}">
<head>
<title>Fontus</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0; user-scalable=0;" />

<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<link rel="shortcut icon" href="resources/img/logo.ico" />

<link rel="stylesheet" type="text/css" href="resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/redmond/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jqgrid/4.5.4/css/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/jquery.mmenu/4.2.5/css/jquery.mmenu.css" />
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script src="//cdn.jsdelivr.net/jqgrid/4.5.4/i18n/grid.locale-${userLocale.language}.js"></script>
<script src="//cdn.jsdelivr.net/jqgrid/4.5.4/jquery.jqGrid.min.js"></script>
<script src="//cdn.jsdelivr.net/jquery.mmenu/4.2.5/js/jquery.mmenu.min.js"></script>
<script src="resources/js/common.js"></script>
</head>

<body>
	<div class="b-page-container">
		<div class="internal-container">
			<t:header userName="${userName}" />
			<t:main-menu selectedItemCode="${selectedMainMenuItemCode}" />
			<div class="b-panels">
				<t:left-panel selectedItemCode="${selectedLeftMenuItemCode}" selectedMainMenuItemCode="${selectedMainMenuItemCode}" />
				<div class="b-center-panel">
					<div class="content" id="content">
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
