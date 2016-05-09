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

// Method to return a string of given length
// 1. Call arguement of word length
// 2. For that many times, do:
//	push random letters from alphabet into array
// 3. print the array
// 4. feed array into LongestPhrase

function String_generator(word_length) {
	string_array = [];
	alphabet = "abcdefghijklmnopqrstuvwxyz";
	word = ""

	for (var i = 0; i < word_length; i++) {
		for (var i = 0; i < Math.floor(Math.random() * 10) + 1; i++) {
			word += "a";
		}
	string_array.push(word);
	console.log(string_array);
	}
}

// Driver Code
var test = new LongestPhrase(["a", "ab", "abc", "abcd"]);
var test_match = new Matching_info({name: "Steven", age: 54}, {name: "Steven", age: 24});
var test_match_false = new Matching_info({name: "Andrew", age: 13}, {name: "Amanda", age: 1423});

for (var i = 0; i < 10; i++) {
	var test_string = new String_generator(3);
	var test_everything = new LongestPhrase(test_string.string_array)	
}

