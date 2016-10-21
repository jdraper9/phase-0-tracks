module Shout

	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :D"
	end

end

phrase = "Oh my god"
puts Shout.yell_angrily(phrase)
puts Shout.yelling_happily(phrase)