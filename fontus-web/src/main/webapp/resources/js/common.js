/*
 * Copyright 2014 iexel
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


var base = document.getElementsByTagName("base")[0].href;
var documentIsUnloaded = false;

$(document).ready(function() {
	$(document).ajaxComplete(ajaxCompleateHandler);
	$(document).ajaxError(ajaxErrorHandler);

	$(window).bind('beforeunload', function(){
		// The user left the page; there is no need to show the error page
		documentIsUnloaded = true;
	});

	$("#mobile-menu").mmenu( {slidingSubmenus: false} );
	//setTooltips();
});

//function setTooltips() {
//	$('[title]').qtip( { style: { classes: 'qtip-cream qtip-rounded qtip-shadow' } } );
//}

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
