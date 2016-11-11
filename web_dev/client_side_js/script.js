console.log("Script is running");

var header = document.getElementsByTagName("h1")[0];

header.draggable = true;

console.log("Header can now be dragged");

var p = document.getElementsByTagName("p")[0];

p.style.color = "blue";

console.log("First paragraph color is now blue");

function turnColorGreen(event){
	console.log(event);
	event.target.style.color = "green";
}

function defaultColor(event){
	event.target.style.color = "black";
}

header.addEventListener("mouseover", turnColorGreen);
header.addEventListener("mouseout", defaultColor);
