var colors = ["blue", "green", "red", "yellow"];
var names = ["Ed", "Jon", "Davos", "Olly"];
var horseTraits = {};

for (var i = 0; i < colors.length; i++) {
	horseTraits[names[i]] = colors[i];
}

//Driver Code
console.log(horseTraits);

function Car(color, model) {
	this.color = color;
	this.model = model;
	this.rev = function rev() { console.log("VROOM!"); };
}

//Driver Code (release 1)

var sportsCar = new Car("red", "Stingray")
console.log(sportsCar.color)
sportsCar.rev()
var familySedan = new Car("silver", "Estate")
console.log(familySedan.model)
console.log(familySedan.color)