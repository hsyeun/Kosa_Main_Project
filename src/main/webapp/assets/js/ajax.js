$(document).ready(function() {

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
			var inHTML = "";

			for (var i = 0; i < data.SMALL.length; i++) {

				inHTML += '<option value="' + data.SMALL[i].index + '">' + data.SMALL[i].category + '</option>';
			}

			$('#mallSelect').empty().append(inHTML);
		}
/*		error: function(xtr, status, error) {
			alert(xtr + ":" + status + ":" + error);
		}*/
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
			var inHTML = "";

			for (var i = 0; i < data.SMALL.length; i++) {

				inHTML += '<option value="' + data.SMALL[i].index + '">' + data.SMALL[i].category + '</option>';
			}

			$('#mallSelect').empty().append(inHTML);

		}
/*		error: function(xtr, status, error) {
			alert(xtr + ":" + status + ":" + error);
		}*/
	});

});