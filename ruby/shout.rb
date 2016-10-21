# module Shout

# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :D"
# 	end

# end

# phrase = "Oh my god"
# puts Shout.yell_angrily(phrase)
# puts Shout.yelling_happily(phrase)

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + " :D"
	end
end

class IrishPerson
	include Shout
end

class Leprechaun
	include Shout
end

Tim = IrishPerson.new
Peevish = Leprechaun.new


p Peevish.yelling_happily("Ahhh, what a wonderful day")
p Tim.yelling_happily("A lephrechaun!")
p Peevish.yell_angrily("They're after me lucky charms")
p Tim.yell_angrily("Blast, he got away")

