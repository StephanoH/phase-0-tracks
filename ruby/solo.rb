# Class: house
# Attributes: 
# => sq. ft. (500-10000)
# => type (house, apt, cottage, etc)
# => owned? (false- starts off renting the place)
# Method 1: Addition to increase sq. feet (sq. ft. addition as argument)
# Method 2: natural disaster (no argument, rng to decide if sq. ft. goes to 0)
# Method 3: buy the property from owner (no argument, turns ownership to true)

class Home
	attr_reader :type
	attr_accessor :sq_ft, :ownership

	def initialize
		@sq_ft = rand(500..10000)
		@type = ["house", "apartment", "cottage", "box", "penthouse", "room", "van", "dorm"].sample
		@ownership = false
		puts "Congrats on getting a new place!"
	end
	
	def remodel=(area)
		@sq_ft = @sq_ft + area
	end

	def wrath_of_the_gods
		@sq_ft = 0
		puts "Oh no! The gods have struck down your home! Nothing remains! Square footage is now..... #{@sq_ft}. Yikes."
	end

	def screw_renting
		@ownership = true
	end
end


puts "How many properties do you want?"
property_quantity = gets.chomp.to_i
property_database = []

property_quantity.times.each do |home|
	home = Home.new
	puts "This is what your place looks like:"
	puts "size (sq. ft.): #{home.sq_ft}"
	puts "type: #{home.type}"
	puts "ownership: #{home.ownership}"
	puts "What do you think? Do you want to make changes? (yes/no)"
	answer = gets.chomp
		if answer == "yes"
			puts "Do you want to change the size?"
			size_change_desire = gets.chomp
				if size_change_desire == "yes"
					puts "By how much?"
					size_change = gets.chomp.to_i
					home.remodel = (size_change)
					puts "Your home was remodelled to this size: #{home.sq_ft}"
				else size_change_desire == "no"
					puts "You must want to straight up buy the place, then. Do you have the funds to buy it off?"
					purchase = gets.chomp
						if purchase == "yes"
							home.screw_renting
							puts "Congrats. Your ownership of the area has come #{home.ownership}."
						else
							puts "Too bad! Come back with more money."
						end
				end
		end
	puts "Did you ever happen to make a deity angry?"
	gods_wrath = gets.chomp
		if gods_wrath == "yes"
			home.wrath_of_the_gods
		end
	property_database << home
end

puts "Here are the final details of your properties:"
property_database.each do |display|
	puts "size (sq. ft.): #{display.sq_ft}"
	puts "type: #{display.type}"
	puts "ownership: #{display.ownership}"
end


