$(document).on('turbolinks:load', function(){
	setTimeout(addRestaurant(), 4000);
	// addRestaurant();
	setTimeout(removeRestaurant(), 4000);
	// removeRestaurant();
})

var addRestaurant = function() {

	$('#heart').on('mouseover', function() {
		$(this).hide()
        $('#add-message').show()
	})
}

var removeRestaurant = function() {
	$('.delete').on('mouseover', function() {
		$(this).hide()
        $('#remove-message').show()
	})
}