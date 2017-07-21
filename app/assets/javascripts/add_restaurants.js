$(document).on('turbolinks:load', function(){
	updateRestaurant();
})

var updateRestaurant = function() {
	$(".add").on("click", function(event){
		event.preventDefault();
		event.stopPropagation();
		var $button = this;
		var url = `/users/${$(event.target).data('user')}/top_restaurants`
		// var url = "/users/:user_id/top_restaurants"
		$.ajax({
	    method: 'POST',
	    url: url,
	  }).done(function(response){
	    $($button).hide();
	    console.log(response);
	  })
	});
}