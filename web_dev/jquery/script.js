window.onload = function(){
	console.log( "welcome");
}

$("img").click(
	function(event){
		console.log("Click!");
	}
);

$("p").addClass("test");

$("p").click(function(event){
		$(this).hide("slow");
	}
);