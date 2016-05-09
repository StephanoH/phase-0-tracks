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

// Function to search for matching key-value pairs
// 1. setup a loop to iterate through each elements of the first hash
// 2. for each iteration, look for a match in the second hash
// 3. if match found, return true (maybe set true to a new variable) and stop
// 4. if none found, return false and continue onto next element

function Matching_info(first_data, second_data) {
	this.first_data = first_data;
	this.second_data = second_data;
	key_match = false;
	value_match = false;

	for (var i = 0; i < Object.keys(first_data).length; i++) {
		if (Object.keys(first_data)[i] in second_data) {
			key_match = true;
			if (this.first_data[Object.keys(first_data)[0]] == this.second_data[Object.keys(first_data)[0]]) {
				value_match = true;
			} else {
				value_match = false;
			}
		} else {
			key_match = false;
		}

	}

	if (key_match && value_match) {
		console.log("true");
	} else {
		console.log("false");
	}
}


// Driver Code
var test = new LongestPhrase(["a", "ab", "abc", "abcd"])
var test_match = new Matching_info({name: "Steven", age: 54}, {name: "Steven", age: 24})
var test_match_false = new Matching_info({name: "Andrew", age: 13}, {name: "Amanda", age: 1423})
