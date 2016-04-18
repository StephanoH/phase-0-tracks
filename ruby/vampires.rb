puts "How many employees are being processed?"
employees = gets.chomp.to_i

until employees == 0
	puts "What is your name?"
	name = gets.chomp
	puts "How old will you be at the end of the year?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	year = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
	bread = gets.chomp
	puts "Would you like to enroll in our compnay's health insurance? (yes or no)"
	health = gets.chomp
	
	
	if name == "Drake Cula" || "Tu Fang"
		puts "Definitely a vampire."
	elsif age == 2016 - year && (bread == "yes" || health == "yes")
		puts "Probably not a vampire."
	elsif age != 2016 - year && (bread == "no" || health == "no")
		puts "Probably a vampire."
	elsif age != 2016 - year && bread == "no" && health == "no"
		puts "Almost certainly a vampire."
	else
		puts "Results inconclusive."
	end
	
	employees -= 1
end
