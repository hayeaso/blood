getdonors = function() {
	$.ajax({
		url : '/BloodDonation/members',
		type : 'GET',
		dataType : "json",
		contentType: "application/json",
		success : function(donors) {
			jQuery.each(donors, function(i, donor) {
				alert(donor.address);

			});
		},
		error : function() {
			alert('Error while request..');
		}
	})
}

