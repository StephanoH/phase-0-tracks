// Function to return longest phrase
// 1. setup a loop that iterates over each item in an array
// 2. Compare .length of one item to the one next to it
// 3. If first is longer, delete second item. If second is longer, delete first item.
// 4. Run the loop again until there is only one item remaining.
// 5. Print the remaining item.

function LongestPhrase(array) {
	this.array = array;

	for (var i = 1; i < this.array.length; i) {
		if (this.array[0].length > this.array[1].length) {
			this.array.splice(1, 1);
		} else {	
			this.array.splice(0, 1);
		}
	}

	console.log(this.array);
}

var test = new LongestPhrase(["a", "ab", "abc", "abcd"])