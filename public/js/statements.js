var urlTransactions = "/transactions";
var urlSummaryTotal = "/summary_total"
var urlSummaryByYear = "/summary_by_year"

// Generic AJAX method
function getData(request_url, request_callback) {
    $.ajax({
        dataType: 'json',
        url: request_url,
        success: request_callback
    });
}
