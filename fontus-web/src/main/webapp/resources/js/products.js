// `base` is defined in another script that is used in all pages.
// It contains the value of the <base> tag in the HTML page.
var URL = base + "rest/products";

// These settings are used (a) in methods like jQuery("#dataTable").jqGrid('getGridParam', 'selrow');
// and (b) in the initialization of the navigation bar.
// Similar settings can be used in a third way: (c) $.extend($.jgrid.edit, {}); $.extend($.jgrid.del, {}); $.extend($.jgrid.search, {});
var jqGridNavBarOptions = {edit:false, add:false, del:false, search:false, refresh:true};
var jqGridEditOptions = {reloadAfterSubmit:false, mtype:"PUT",  closeAfterEdit:true, recreateForm:true, serializeEditData:serializeEditDataCallback, errorTextFormat:errorTextFormatCallback, onclickSubmit:onclickSubmitEditCallback, afterSubmit:afterSubmitCallback, onclickPgButtons:cleanEditForm, width:320};
var jqGridAddOptions =  {reloadAfterSubmit:false, mtype:"POST", closeAfterAdd:true,  recreateForm:true, serializeEditData:serializeEditDataCallback, errorTextFormat:errorTextFormatCallback,                                          afterSubmit:afterSubmitCallback};
var jqGridDelOptions =  {reloadAfterSubmit:false, mtype:"DELETE",                                       serializeDelData:serializeDelDataCallback,                                            onclickSubmit:onclickSubmitDelCallback};
var jqGridSearchOptions = {sopt:['cn','bw','eq','ne','lt','gt','ew']};

$(document).ready(function() {
	setupGrid();
	attachButtons();
	decorateButtons();
	initialiseWarningDialog();
	setDataGridWidth();
	$(window).resize(setDataGridWidth);
	// style the <select>
	$(".ui-pg-selbox").menu();
	preloadImages();
});

function setupGrid() {
	$("#dataTable").jqGrid({
		url:URL, // source of data for the grid
		editurl:URL, // URL that is used to add/edit/delete records
		datatype:"json", // type of server response; request data type is configured separately 
		jsonReader:{repeatitems:false, id:"id"}, // the unique ID of a row
		colNames:gridColNames, // names of columns; defined in the JSP file for localization purposes
		colModel:[
			{name:"id",        index:"id",        width:40,   align:"right", classes:"grid-col", editable:false, editoptions:{readonly:true}},
			{name:"name",      index:"name",      width:600,  align:"left",  classes:"grid-col", editable:true,  editoptions:{size:25}},
			{name:"price",     index:"price",     width:70,   align:"right", classes:"grid-col", editable:true,  editoptions:{size:25}, formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 2, prefix: "$ "}},
			{name:"timestamp", index:"timestamp", hidden: true,                                  editable: true}
		],
		rowNum:5,
		rowList:[5,10,20],
		height:114,
		shrinkToFit:true,
		sortname:'id',
		sortorder:"asc",
		pager:"#pagingDiv",
		viewrecords:true,
		caption:gridCaption, // defined in the JSP file for localization purposes
		loadError:loadErrorCallback // error handler; add/edit/delete errors are processed by other methods
	});

	// The add/edit/delete/search buttons in the navigation bar are initialized here, but are not used.
	jQuery("#dataTable").jqGrid('navGrid', '#pagingDiv', jqGridNavBarOptions, jqGridEditOptions, jqGridAddOptions, jqGridDelOptions, jqGridSearchOptions);
}


// callbacks that are called before the request is sent to the server --------------

// Fires after the submit button is clicked and the postdata is constructed.
// Parameters passed to this event are: a options array of the method and the posted data array.
// The event should return array of type {} which extends the postdata array. 
function onclickSubmitEditCallback(options, data) {
	cleanEditForm();
	options.url = URL + '/' + data.dataTable_id;
}

function onclickSubmitDelCallback(options, data) {
	options.url = URL + '/' + data;
}

// Serialize the data passed to the AJAX request. The function should return the serialized data.
// This event can be used when a custom data should be passed to the server (JSON, XML, etc.)
// To this event receives the data which will be posted to the server.
function serializeEditDataCallback(data) {
	// create a copy
	var modifiedData = $.extend({}, data);

	// if it's a new record, replace its ID
	if(modifiedData.id == '_empty') {
		modifiedData.id = 0;
		modifiedData.timestamp = 0;
	}

	// the operation is passed as an HTTP method, this field is not necessary
	delete modifiedData.oper;

	// encode the data in `application/x-www-form-urlencoded`
	return $.param(modifiedData);

	// Remove the comment to return JSON instead
	// return JSON.stringify(modifiedData);
	// You also need to add `ajaxEditOptions: { contentType: "application/json" }` to `edit` options
}

function serializeDelDataCallback() {
	// The operation is passed as an HTTP method, there is no need to pass any data.
	return "";
}


// callbacks that are called when the response is received from server -----------------


// This callback is called when an error happens during an add/edit/delete operation on the server.
// It should return a string which is displayed at the top of the dialog.
function errorTextFormatCallback(xhr) {

	// If the response does not have JSON data, or it contains an error message that should be displayed on a separate error page...
	if(xhr.responseJSON == null || xhr.responseJSON.globalErrorCode != null) {
		return; // the error should be processed globally
	}
	
	var validationErrors = xhr.responseJSON.validationErrors;
		
	if(validationErrors != null) {

		for (var i = 0; i < validationErrors.length; i += 2) {
			var selector = ".DataTD #" + validationErrors[i];
			$(selector).after( "<img title='" + validationErrors[i+1] + "' class='jqgrid-error-icon' src='resources/img/validation-error.png'></img>" );
		}
	}
	
	return xhr.responseJSON.localErrorMessage;
}

// removes error icons from an add/edit form
function cleanEditForm() {
	$(".jqgrid-error-icon").remove();
}

//set the ID of the new row in the grid 
function afterSubmitCallback(xhr, data) {
	data.timestamp = xhr.responseJSON.timestamp;
	// the id in the returned array is used for new records only; it is ignored for updated records
	return [ true, "", xhr.responseJSON.id ];
}

//error handler for the grid data requests (not for add/edit/delete operations)
function loadErrorCallback(xhr, st, err) {

	if(xhr.responseJSON != null && xhr.responseJSON.localErrorMessage != null) {
		// #error-message is a <span> tag in the HTML page
		jQuery("#error-message").html(xhr.responseJSON.localErrorMessage);
	}
}


// other methods --------------------------------------------------------------------


function setDataGridWidth() {
	var width = $("#b-center-panel").width();
	$("#dataTable").jqGrid("setColProp", "name", { widthOrg : width - 120 });
	$("#dataTable").jqGrid("setGridWidth", width);
}

// Creates a jQuery UI dialog (hidden at this point)
function initialiseWarningDialog() {
	$( "#selectRowMessage" ).dialog({
		autoOpen:false,
		height: 120,
		modal: true,
		buttons: {
			Close: function() {
				$( this ).dialog( "close" );
			}
		}
	});
}

function attachButtons() {
	$("#editBtn").click(function() {
		var gr = jQuery("#dataTable").jqGrid('getGridParam', 'selrow');
		if (gr != null) {
			jQuery("#dataTable").jqGrid('editGridRow', gr, jqGridEditOptions);
		} else {
			$("#selectRowMessage").dialog('open');
		}
	});

	$("#addBtn").click(function() {
		jQuery("#dataTable").jqGrid('editGridRow', 'new', jqGridAddOptions);
	});

	$("#deleteBtn").click(function() {
		var gr = jQuery("#dataTable").jqGrid('getGridParam', 'selrow');
		if (gr != null) {
			jQuery("#dataTable").jqGrid('delGridRow', gr, jqGridDelOptions);
		} else {
			$("#selectRowMessage").dialog('open');
		}
	});

	$("#searchBtn").click(function() {
		jQuery("#dataTable").jqGrid('searchGrid', jqGridSearchOptions);
	});

	$("#refreshBtn").click(function() {		
		$(".ui-pg-div .ui-icon-refresh").click();

		// does nor reset the search options
		//$("#dataTable").trigger("reloadGrid", [{page:1}]);
	});
}

// converts buttons into jQuery UI buttons
function decorateButtons()
{
	$("#addBtn").button({
		icons: { primary: "ui-icon-plus" }
	});
	
	$("#editBtn").button({
		icons: { primary: "ui-icon-pencil" }
	});	
	
	$("#deleteBtn").button({
		icons: { primary: "ui-icon-trash" }
	});

	$("#searchBtn").button({
		icons: { primary: "ui-icon-search" }
	});

	$("#refreshBtn").button({
		icons: { primary: "ui-icon-refresh" }
	});
}

function preloadImages() {
	// Switch the comment if you use local (not CDN) jQuery UI.
	//var themeImagesDir = "resources/css/jquery-ui/redmond/images/";
	var themeImagesDir = "//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/redmond/images/";

	$('<img/>')[0].src = themeImagesDir + "ui-icons_217bc0_256x240.png";
	$('<img/>')[0].src = themeImagesDir + "ui-icons_f9bd01_256x240.png";
}