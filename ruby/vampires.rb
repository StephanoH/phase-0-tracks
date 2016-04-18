puts "How many employees are being processed?"
Employee_number = gets.chomp.to_i




until Employee_number == 0

	puts "What is your name?"
		name = gets.chomp
	puts "How old will you be by the end of the year?"
		age = gets.chomp.to_i
	puts "What year were you born?"
		birthyear = gets.chomp.to_i
	puts "Our cafeteria serves garlic bread. Should we order some for you?"
		garlic_bread_answer = gets.chomp
	puts "Would you like to enroll in the company's health insurance?"
		insurance_answer = gets.chomp



	if age == 2016 - birthyear && garlic_bread_answer == "yes" && insurance_answer == "yes" && (name != "Drake Cula" && name != "Tu Fang")
		puts "Probably not a vampire."
	elsif age != (2016 - birthyear) && (garlic_bread_answer == "no" || insurance_answer == "no") 
		puts "Probably a vampire."
	elsif age != (2016 - birthyear) && garlic_bread_answer == "no" && insurance_answer == "no"
		puts "Almost certainly a vampire."
	elsif name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."
	else 
		puts "Results inconclusive."
	end

	Employee_number = Employee_number - 1

	def allergies(x)
		puts "List any and all allergies you have. Type 'done' when you are done."
		allergies = gets.chomp

		if allergies == "sunshine"
			puts "Probably a vampire."
		elsif allergies == "done"
			puts "Thanks for your input."
		end

end