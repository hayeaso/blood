getdonors = function() {

	$.ajax({
		url : '/BloodDonation/members',
		type : 'GET',
		dataType : "json",
		data : "name=" + $('#search').val(),
		contentType : 'text/plain',
		success : function(donors) {
			getData(donors);
		},
		error : function() {
			alert('Error while request..');
		}
	})
}

requestDonation = function(id) {
	// alert("Your ID is "+ id);

	$.ajax({
		url : '/BloodDonation/requestBloodDonation',
		type : 'GET',
		// dataType : "text/plain",
		data : "id=" + id,
		contentType : 'text/plain',
		success : function(message) {
			alert(message);
		},
		error : function() {
			alert('Error while request..');
		}
	})
}
