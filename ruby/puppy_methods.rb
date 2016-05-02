class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  	times.times { puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	puts human_years * 7
  end

  def tricks
  	abilities = [
  		"*jumps*", 
  		"*sits*", 
  		"*grabs you a beer*", 
  		"*wags tail*", 
  		"*looks at you questioningly*"
  	]
  	puts abilities.sample(1)
  end

  def initialize
  	puts "Initializing new puppy instance ..."
  end

end

dawg = Puppy.new

dawg.fetch("ball")
dawg.speak(2)
dawg.roll_over
dawg.dog_years(23)
dawg.tricks

class Ironman_suits
	def fly
		puts "Repulsors set to thrust. *WHOOSH!*"
	end

	def self_destruct(timer)
		puts "Self-destruct in..."
		until timer == 0
			puts timer
			timer -= 1
		end

		if timer = 0
			puts "KABOOM"
		end
	end
end

suit_mks = []
current_model = 1
model_name = current_model

until current_model == 50
	model_name = Ironman_suits.new
	suit_mks.insert(-1, model_name)
	current_model += 1
end

suit_mks.each do |model|
	p model
	model.fly
	model.self_destruct(3)
end