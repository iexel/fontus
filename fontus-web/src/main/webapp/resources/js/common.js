var base = document.getElementsByTagName("base")[0].href;
var documentIsUnloaded = false;

$(document).ready(function() {
	$(document).ajaxComplete(ajaxCompleateHandler);
	$(document).ajaxError(ajaxErrorHandler);

	$(window).bind('beforeunload', function(){
		// The user left the page; there is no need to show the error page
		documentIsUnloaded = true;
	});
});

// If the session expires, an AJAX request gets redirected to
// the login page. This method checks the response: whether
// it is JSON of the login page.
function ajaxCompleateHandler(event, request, settings) {
	if (request.getResponseHeader("LoginPageResponseFlag") == "true") {
		window.location.href = base + "error/session-expired";
	}
}

// Processing of AJAX errors which should be shown on a dedicated page. 
function ajaxErrorHandler(event, jqxhr, settings, exception) {

	// The user left the page; there is no need to show the error page
	if(documentIsUnloaded) {
		return;
	}

	// The request does not return any JSON
	if(jqxhr.responseJSON == null) {
		// Request has "Aborted" status.
		if(jqxhr.status == 0) {
			window.location.href = base + "error/error_server_is_not_available";
		}
		else { // The request was processed by the web server and has a status code.
			window.location.href = base + "error/error-unexpected";
		}
	}
	else if(jqxhr.responseJSON.globalErrorCode != null) {
		// Displaying a specific error message send by the server code
		window.location.href = base + "error/" + jqxhr.responseJSON.globalErrorCode;
		//window.location.assign(base + "error/" + jqxhr.responseJSON.globalErrorCode);
	}
}
