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

	// Calculate offset for tertiary navigation
	var header_offset = $('.header-img').offset();
	var tertiary_offset = header_offset.top + $('.header-img').height() - 150;

	// If screen anywhere but top of document, affix navs
	if ( $(window).scrollTop() == 0 ) {
		$('#secondNav').removeClass("affix");
		$('#nav').removeClass("affix");
	}
	else {
		$('#secondNav').addClass("affix");
		$('#nav').addClass("affix");
	}

	if ( $(window).scrollTop() > tertiary_offset) {
		$('#tertiaryNav').addClass("affix");
	}
	else {
		$('#tertiaryNav').removeClass("affix");
	}
};

/*********** Image Gallery ***********/

/* Gallery Events */

// Click on thumb to select image
$("#imageGallery_thumb a").click(function(event) {
	event.preventDefault();

	console.log($(this));
	advanceGallery($(".thumb_selected"), $(this).closest("div"));
});

// click on left arrow
$("#previous").click(function(event) {
	event.preventDefault();

	advancePrevious(false);
});

// click on right arrow
$("#next").click(function(event) {
	event.preventDefault();

	advanceNext(false);
});

// Swipe Left Event
$( "#mobile-gallery" ).on("swipeleft",function(){
  	console.log("Swipe left");
	event.preventDefault();

	advanceNext(true);
});

// Swipe Right Event
$( "#mobile-gallery" ).on("swiperight",function(){
  	console.log("Swipe left");
	event.preventDefault();

	advancePrevious(true);
});

$( window ).on( "swipe", function( event ) { console.log('other swipe'); } )

/* Helper functions */

function advanceNext(mobile){
	// get currently selected thumbnail (div)
	$current = $(".thumb_selected");

	// Check to see if this is the last image
	if ($current.find("img").attr("src") === $current.parent().children("div:last-child").find("img").attr("src")) {
		console.log("Last");
		$next = $current.parent().children("div:first-child");
	} else {
		console.log("Not Last");
		$next = $current.next();
	}
	// Advance main image for non-mobile
	advanceGallery($current, $next, mobile);
}

function advancePrev(mobile){
	// get currently selected thumbnail (div)
	$current = $(".thumb_selected"); // div

	// Check to see if this is the first image
	if ($current.find("img").attr("src") === $current.parent().children("div:first-child").find("img").attr("src")) {
		console.log("First");
		// If first image, previous loops to last image
		$previous = $current.parent().children("div:last-child");
	} else {
		// otherwise get previous image
		console.log("Not first");
		$previous = $current.prev();
	}

	advanceGallery($current, $previous, mobile);
}


// move gallery from current (div) to next (div)
function advanceGallery(current, next, mobile) {

	// Get image link
	imgHref = next.find("img").attr("data-path");

	// Get image caption from alt text
	var imgCaption = next.find("img").attr("alt");

	var $gallery_main;
	var $gallery_placeholder;

	if (mobile) {
		$gallery_main = $('.gallery_container_mobile img.gallery_main');
		$gallery_placeholder =  $('.gallery_container_mobile img.placeholder')
	}
	else {
		$gallery_main = $('.gallery_container img.gallery_main');
		$gallery_placeholder =  $('.gallery_container img.placeholder')
	}

	// Fade out current image
	$gallery_main.fadeToggle(400, function(){

		current.removeClass("thumb_selected");
		updateGallery(imgHref, imgCaption, $gallery_main);

		// Display placeholder to prevent div collapse
		$gallery_placeholder.css("display", "inline");

	}).delay(200).fadeToggle( { duration: 400, start: function() {
		// Hide placeholder when image starts fading in
		$gallery_placeholder.css("display", "none");
	}});

	next.closest("div").addClass("thumb_selected");
}

// Update main gallery image and caption
function updateGallery(new_src, new_caption, gallery_main){
	console.log("Setting new src to " + new_src);
	console.log("Setting new caption to " + new_caption);

	gallery_main.attr("src", new_src);

	$("#caption p").text(new_caption);
}

// Handle automatic slide shows
/* $(document).ready(function(){
	$(".gallery_auto > div:gt(0)").hide();

	setInterval(function() { 
		console.log("loop");
		console.log($(".gallery_auto").first().first().attr("src"));
		$(".gallery_auto > div:first").fadeOut(1000).next().fadeIn(1000).end().appendTo('.gallery_auto');
	}, 3000); 
});*/ 