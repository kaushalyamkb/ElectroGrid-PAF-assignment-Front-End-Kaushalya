$(document).ready(function(){
	alert("Page Loaded");
});

//validations================================================================================================================================
var emailValidation = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
var phoneValidation = /^\d{10}$/;

function validateItemForm() {
	if ($("#power_connection_type").val().trim() == "") {
		return "Insert Power Connection Type.";
	}
	if ($("#power_bill_id").val().trim() == "") {
		return "Insert Bill ID.";
	}
	if ($("#power_used_units").val().trim() == "") {
		return "Insert Used Units.";
	}
	if ($("#power_unit_value").val().trim() == "") {
		return "Insert Value per one unit.";
	}
	if ($("#power_pay_value").val().trim() == "") {
		return "Insert Paied Value";
	}
	if ($("#power_pay_balance").val().trim() == "") {
		return "Insert the Balance.";
	}
	if ($("#power_bill_value").val().trim() == "") {
		return "Insert Bill Amount.";
	}
	
	return true;
}


// SAVE ============================================
$(document).on("click", "#addPower", function(event) { 
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide(); 
		
		// Form validation-------------------
		var status = validateItemForm(); if (status != true) {
			$("#alertError").text(status);
			$("#alertError").show();
				return;
		} $.ajax({
				url : "PowerServlet",
				type : "post",
				data : $("#addformPower").serialize(),
				dataType : "text",
				complete : function(response, status) {
				onItemSaveComplete(response.responseText, status);
			}
		});
});

function onItemSaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divItemsGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {	
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidItemIDSave").val("");
	$("#formItem")[0].reset();
}

