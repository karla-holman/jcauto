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

// Add checkered background to affixed nav
window.onscroll = function() {

	if ( $(window).scrollTop() == 0 ) {
		$('#secondNav').removeClass("affix");
		//$('#tertiaryNav').removeClass("affix");
		$('#nav').removeClass("affix");
	}
	else {
		$('#secondNav').addClass("affix");
		//$('#tertiaryNav').addClass("affix");
		$('#nav').addClass("affix");
	}
};

// Image Gallery
$("#imageGallery a").click(function(event) {
	// Prevent HTML href from being followed
	event.preventDefault();

	// Get image link
	imgHref = $(this).children("img:first").attr("data-path");

	// Get image caption from alt text
	var imgCaption = $(this).children("img:first").attr("alt");

	// update main gallery image
	$("#gallery_main").attr("src", imgHref);

	$("#caption p").text(imgCaption);

	// change selected thumbnail
	$(".thumb_selected").removeClass("thumb_selected");
	$(this).children().addClass("thumb_selected");

});