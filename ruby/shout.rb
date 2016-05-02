# module Shout

# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!" + "yay!" + ":D"
# 	end

# end

module Shout

	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!" + " Yay!" + " :D"
	end

end

class Drill_Sergeant
	include Shout
end

class Excited_9_yr_old
	include Shout
end




# puts Shout.yell_angrily("I guess so")
# puts Shout.yelling_happily("I understand")

Sgt = Drill_Sergeant.new
puts Sgt.yell_angrily("What are you doing, soldier")
puts Sgt.yelling_happily("You shot 100% at the range today")

Anna = Excited_9_yr_old.new
puts Anna.yell_angrily("I can't believe you threw away my dolls")
puts Anna.yelling_happily("I can't believe you got me so many dolls")