
$(document).ready(function() {

	var cate = $('#productSelect option:selected').val();
	var postdata = {
		'cate': cate
	};

	$.ajax({
		type: 'POST',
		url: 'signup.do',
		data: JSON.stringify(postdata),
		dataType: 'JSON',
		contentType: "application/json; charset=utf-8",
		success: function(data) {
			var inHTML = "<ul style='list-style:none;'>"

			for (var i = 0; i < data.SMALL.length; i++) {
				//inHTML += '<option value="' + data.SMALL[i].index + '">' + data.SMALL[i].category + '</option>';
				inHTML += "<li><input type='checkbox' name = 'chkbox' id='" + data.SMALL[i].index + "' value='" + data.SMALL[i].category + "'> "+data.SMALL[i].category+"</li>";
			}
			inHTML += "</ul>";
			$('#mallSelect').empty().append(inHTML);
		}
	});
});

$('#productSelect').on('change', function() {


	var cate = $('#productSelect option:selected').val();

	var postdata = {
		'cate': cate
	};

	$.ajax({
		type: 'POST',
		url: 'signup.do',
		/*data: postdata,*/
		data: JSON.stringify(postdata),
		dataType: 'JSON',
		//        async: false,
		contentType: "application/json; charset=utf-8",
		success: function(data) {
			var inHTML = "<ul style='list-style:none;'>";

			for (var i = 0; i < data.SMALL.length; i++) {
				//inHTML += '<option value="' + data.SMALL[i].index + '">' + data.SMALL[i].category + '</option>';
				inHTML += "<li><input type='checkbox' name = 'chkbox' id='" + data.SMALL[i].index + "' value='" + data.SMALL[i].category + "'> "+data.SMALL[i].category+"</li>";
			}
			inHTML += "</ul>"

			$('#mallSelect').empty().append(inHTML);

		}
	});

});