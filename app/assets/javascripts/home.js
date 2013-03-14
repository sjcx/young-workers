//this guy makes the 'new' label show up on posts created_at today
jQuery(function() {
	$(document).ready(function() {
		$('.today').hide();
		var d = new Date();
		var date = ("0" + d.getDate()).slice(-2);
		var month = ("0" + (d.getMonth() + 1)).slice(-2);
		var today = String(date + "-" + month + "-" + d.getFullYear());
		if (document.getElementById(today) !== null) {
			$('.today').first().show();
		} 
	})
})
