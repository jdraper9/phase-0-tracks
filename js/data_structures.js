var colors = ["blue", "green", "yellow", "red"];
var names = ["Ed", "Joe", "Fred", "Tommy"];
colors.push("pink");
names.push("Sam");
var horses = {};
for(i = 0; i < names.length; i ++){
	horses[names[i]] = colors[i];
}
console.log(horses);

function Car(color, speed, automatic){
	this.color = color;
	this.speed = speed;
	this.automatic = automatic;
	this.going_fast = false;
	this.speed_up = function() {
		console.log("Vrrroooom!");
		this.going_fast = true;
	}
	this.slam_breaks = function() {
		if(this.going_fast){
			console.log("Screeeech!");
		} else {
			console.log("*Nothing happens...*");
		}
		this.going_fast = false;
	}
}

var newCar = new Car("blue", "fast", true);
newCar.slam_breaks();
newCar.speed_up();
newCar.slam_breaks();
console.log(newCar);
var anotherCar = new Car("red", "slow", false);
console.log(anotherCar.automatic);
console.log(anotherCar);