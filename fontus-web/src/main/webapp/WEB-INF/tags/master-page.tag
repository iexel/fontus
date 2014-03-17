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

<link rel="stylesheet" type="text/css" href="resources/css/jquery-ui/redmond/jquery-ui-1.10.3.custom.min.css" />
<link rel="stylesheet" type="text/css" href="resources/css/jqgrid/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

<script src="resources/js/libs/jquery/jquery-1.10.2.min.js"></script>
<script src="resources/js/libs/jquery-ui/jquery-ui-1.10.3.custom.min.js"></script>

<script src="resources/js/libs/jqgrid/i18n/grid.locale-${userLocale.language}.js"></script>
<script src="resources/js/libs/jqgrid/jquery.jqGrid.min.js"></script>

<script src="resources/js/common.js"></script>

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
