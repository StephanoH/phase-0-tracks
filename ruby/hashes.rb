# Have user input data into an empty hash
# Print out the completed hash (formatted, not just as a hash)
# Ask user for any modifications
# Allow for updates one time.
# Reprint the updated hash

designer_info = {}

# form fields being changed into key-value pairs
puts "What is your name?"
	name = gets.chomp
	designer_info[:person] = name
	
puts "What is your age?"
	years = gets.chomp.to_i
	designer_info[:age] = years

puts "What kind of theme would you like?"
	theme = gets.chomp
	designer_info[:decor] = theme

puts "How many rooms do you have?"
	room_number = gets.chomp.to_i
	designer_info[:rooms] = room_number

puts "Are you on a budget under $10000?"
	budget = gets.chomp.downcase
		if budget == "yes"
			designer_info[:budget] = true
		else
			designer_info[:budget] = false
		end

# printing the inital hash
puts "Here's all of your provided information. Please check over it carefully."
puts designer_info

# modifying answer to change a specific field
puts "Is there field displaying wrong information? Enter the name of the field. 
If everything is correct, type 'none.'"
	answer = gets.chomp
		if answer == "none"
			p "Here is your completed designer profile:"
			p designer_info
		else 
			modified_answer = answer.to_sym
		end

# matching modified answer input to the correct input type
puts "What would you like to change #{modified_answer} to?"
	if modified_answer == :person || modified_answer == :decor
		designer_info[modified_answer] = gets.chomp
	elsif modified_answer == :age || modified_answer == :rooms
		designer_info[modified_answer] = gets.chomp.to_i
	else modified_answer == :budget
		designer_info[modified_answer] = gets.chomp.downcase
			if designer_info[modified_answer] == "yes"
				designer_info[modified_answer] == true
			else 
				designer_info[modified_answer] == false
			end
	end

# rewritten hash
puts "Here is your rewritten information. Thank you!"
puts designer_info

