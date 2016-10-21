class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
			"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0

	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete_if { |x| x == reindeer}
		@reindeer_ranking << reindeer
	end

end

# ----- Release 1 driver code ------

# santas = []
example_genders = ["agender", "androgyne", "bigender", "female", "male", "two-spirit", "N/A"]
example_ethnicities = ["black", "latino", "white", "Japanese-African", 
	"prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# 4.times do
# 	santas <<  Santa.new(example_genders[rand(7)], example_ethnicities[rand(7)])
# end

# p santas

# ----- Release 2/3 driver code -----

# santa01 = Santa.new("female", "latino")
# santa01.celebrate_birthday
# santa01.get_mad_at("Dasher")
# santa01.gender = "male"
# p santa01.age
# p santa01.ethnicity
# p santa01

# ----- Release 4 driver code -----

101.times do
	santa = Santa.new(example_genders[rand(7)], example_ethnicities[rand(7)])
	santa.age = rand(140)
	puts "Gender: #{santa.gender}"
	puts "Ethnicity: #{santa.ethnicity}"
	puts "Age: #{santa.age}"
end






