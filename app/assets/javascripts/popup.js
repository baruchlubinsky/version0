$(document).ready(function()
{
	$("#addButton").click(showPopup);
	$("#full-screen-popup").click(hidePopup);
	$("#add-item-form").click(function(event) { event.stopPropagation(); } );
});

function showPopup()
{
	var popup = $("#full-screen-popup");
	popup.addClass("show");
	popup.removeClass("hidden");
}

function hidePopup()
{
	var popup = $("#full-screen-popup");
	popup.addClass("hidden");
	popup.removeClass("shown");
}
