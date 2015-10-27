$("img").mouseenter(function(event){
	// var image_src = $(this).attr("data");
	//console.log($(this).attr("src"));

	/*

	// parse file structure
	var file_name = image_src.split(".");
	file_name_first = file_name[0].split("-");

	var new_file_name = file_name_first + "-hover" + "." + file_name[1]; */
	//hover_src = $(this).attr("data-hover")
	//console.log(hover_src);
	//$(this).attr("src", hover_src);

}).mouseleave(function(event){
	/* var image_src = $(this).attr("src");
	console.log(image_src);

	// parse file structure
	var file_name = image_src.split("-hover");

	var new_file_name = file_name[0] + file_name[1];
	console.log(new_file_name); */

	/*hover_src = $(this).attr("data.data_src")
	$(this).attr("src", hover_src);*/

});

/* Handle Buttons */

// Change to red on hover
function toggleNeon(button_hovered, path) {
	console.log(path);
	console.log("OLD: " + $(button_hovered).css("background-image"));
	$(button_hovered).css("background-image", "url(" + path + ")");
	console.log("NEW: " + $(button_hovered).css("background-image"));
}

window.onscroll = function() {

	if ( $(window).scrollTop() == 0 ) {
		$('#secondNav').removeClass("affix");
	}
	else {
		$('#secondNav').addClass("affix");
	}
};