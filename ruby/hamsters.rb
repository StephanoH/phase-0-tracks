puts "What is your hamster's name?"
name = gets.chomp
puts "What is its volume level?"
volume = gets.chomp.to_i
puts "What is its fur color?"
color = gets.chomp
puts "Is this hamster a good candidate for adoption?"
adoptability = gets.chomp
puts "Where would you estimate this hamster's age at?"
age = gets.chomp.to_i

if age == ""
	age = nil
end

puts "Name: #{name} "
puts "Volume level: #{volume}"
puts "Fur color: #{color}"
puts "Good for adoption?: #{adoptability}"
puts "Estimated age: #{age}"
