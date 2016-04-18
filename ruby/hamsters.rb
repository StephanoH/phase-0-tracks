puts "What is your hamster's name?"
name = gets.chomp
puts "What is its volume level?"
volume = gets.chomp
puts "What is its fur color?"
volume = gets.chomp
puts "Is this hamster a good candidate for adoption?"
adoptability = gets.chomp
puts "Where would you estimate this hamster's age at?"
age = gets.chomp

if age == ""
	age = nil
end

puts age
