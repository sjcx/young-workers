jQuery(function() {
	$(document).ready(function() {
		var d = new Date();
		var date = ("0" + d.getDate()).slice(-2);
		var month = ("0" + (d.getMonth() + 1)).slice(-2);
		var today = date + "-" + month + "-" + d.getFullYear();
		console.log(today);
		if (document.getElementById(today) !== null) {
			$('.today').show();
		} else
			$('.today').hide();
	})
})
