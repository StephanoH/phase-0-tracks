class Santa
	attr_accessor :gender, :ethnicity, :reindeer_ranking, :age

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = [
			"Rudolph", 
			"Dasher", 
			"Dancer", 
			"Prancer", 
			"Vixen", 
			"Comet", 
			"Cupid", 
			"Donner", 
			"Blitzen"
		]
		@age = 0
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end 

	def get_mad_at=(reindeer)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
	end

end

bad = Santa.new("male", "Asian")
bad.speak
bad.eat_milk_and_cookies("chocolate chip")
bad.celebrate_birthday
puts bad.age
bad.get_mad_at = "Vixen"
puts bad.reindeer_ranking
puts bad.gender = "female"
puts "bad is the new good, the lastest #{bad.ethnicity} Santa!"

santas = []
genders = ["male", "female", "???", "gender fluid"]
ethnicities = ["white", "black", "Hispanic", "Asian"]

genders.length.times do |new_santas|
	santas << Santa.new(genders[new_santas], ethnicities[new_santas])
end

10000.times do |santa|
	santa = Santa.new(genders.sample, ethnicities.sample)
	santa.age = rand(0..140)
	puts santa.gender
	puts santa.ethnicity
	puts santa.reindeer_ranking
	puts santa.age
end