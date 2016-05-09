var colors = ["blue", "green", "red", "yellow"];
var names = ["Ed", "Jon", "Davos", "Olly"];
var horseTraits = {};

for (var i = 0; i < colors.length; i++) {
	horseTraits[names[i]] = colors[i];
}

console.log(horseTraits);