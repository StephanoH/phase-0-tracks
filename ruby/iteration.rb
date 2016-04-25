# method that takes a block
def doggies
	puts "Shih Tzus and Malteses are the cutest!"
	yield("Gina", "Somie")
	puts "See how much I love them?"
end


doggies {|name1, name2| puts "Their names are #{name1} and #{name2}"}

# .each and .map exercises for arrays and hashes

#array
authors_array = [
	"J.K. Rowling", 
	"Kurt Vonnegut", 
	"George Orwell", 
	"Shel Silverstein"
]

#hash
authors_hash = {
	"J.K. Rowling" => "Harry Potter",
	"Kurt Vonnegut" => "Slaughter House V",
	"George Orwell" => "1984",
	"Shel Silverstein" => "Where the Sidewalk Ends"
}

#.each on the array
authors_array.each do |best|
	puts "#{best} is the best author"	
end

#.each on hash
authors_hash.each do |name, book|
	puts "#{name} wrote this amazing book called #{book}!"
end

#.map on array
p authors_array

next_array = authors_array.map do |name|
	puts name
	name.next
end

p next_array


    # A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
    # A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
    # A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

letters = ["a", "b", "c", "d", "e", "f"]
letters_hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6}

# Question 1
# method that deletes the letter "a" 
p letters
letters.delete_if {|letter| letter == "a"}
p letters

# method that deletes if letter is "a" and number is 1
p letters_hash
letters_hash.delete_if {|letter, number| letter == "a" && number == 1}
p letters_hash

#Question 2
letters = ["a", "b", "c", "d", "e", "f"]
letters_hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6}

# method that selects for cells equal to or greater the letter "c"
p letters
p letters.select { |letter| letter >= "c"}

# method that selects for cells greater than or equal to "c" or if the number is greater than or equal to 3 
p letters_hash
p letters_hash.select { |letter, number| letter >= "c" || number >= 3}

#Question 3

#method for keeping letters if they are less than the value of "c"
p letters
p letters.keep_if {|letter| letter < "c"}

p letters_hash
p letters_hash.keep_if { |letter, number| letter < "c" || number < 3}
