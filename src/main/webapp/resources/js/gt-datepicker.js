
var today = new Date(new Date().getFullYear(), new Date().getMonth(),
		new Date().getDate());

$('#searchPlanStartDate').datepicker({
	uiLibrary : 'bootstrap',
	format : 'yyyy-mm-dd',
	modal : true,
	header: true,
	footer: true,
	// minDate: today,
	maxDate : function() {
		return $('#devPlanEndDate').val();
	}
});
$('#searchPlanEndDate').datepicker({
	uiLibrary : 'bootstrap',
	format : 'yyyy-mm-dd',
	modal : true,
	header: true,
	footer: true,
	// minDate: today,
	maxDate : function() {
		return $('#devPlanEndDate').val();
	}
});

$('#devPlanStartDate').datepicker({
	uiLibrary : 'bootstrap',
	format : 'yyyy-mm-dd',
	modal : true,
	header: true,
	footer: true,
	// minDate: today,
	maxDate : function() {
		return $('#devPlanEndDate').val();
	}
});
$('#devPlanEndDate').datepicker({
	uiLibrary : 'bootstrap',
	format : 'yyyy-mm-dd',
	modal : true,
	header: true,
	footer: true,
	minDate : function() {
		return $('#devPlanStartDate').val();
	}
});

$('#realDevStartDate').datepicker({
	uiLibrary : 'bootstrap',
	// minDate: today,
	format : 'yyyy-mm-dd',
	modal : true,
	header: true,
	footer: true,
	maxDate : function() {
		return $('#devRealEndDate').val();
	}
});

$('#realDevEndDate').datepicker({
	uiLibrary : 'bootstrap',	
	// minDate: today,
	format : 'yyyy-mm-dd',
	modal : true,
	header: true,
	footer: true,
	minDate : function() {
		return $('#devRealStartDate').val();
	}
	
});

$('#testPlanStartDate').datepicker({
	uiLibrary : 'bootstrap',
	// minDate: today,
	format : 'yyyy-mm-dd',
	modal : true,
	header: true,
	footer: true,
	maxDate : function() {
		return $('#testRealStartDate').val();
	}
});

$('#testRealStartDate').datepicker({
	uiLibrary : 'bootstrap',
	// minDate: today,
	format : 'yyyy-mm-dd',
	modal : true,
	header: true,
	footer: true,
	minDate : function() {
		return $('#testPlanStartDate').val();
	}
});

// https://www.w3schools.com/bootstrap/tryit.asp?filename=trybs_filters_table&stacked=h
// table filter
$(document).ready(function() {
	$("#myInput").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		$("#myTable tr").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	});
});
