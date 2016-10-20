class Puppy

  def fetch(toy)
  	puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times {puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	human_years*7
  end

  def wag_tail(happyCheck)
  	if happyCheck
  		puts "*wags tail*"
  	else
  		puts "*whines*"
  	end
  end

  def initialize
  	puts "Initializing new puppy instance ..."
  end

end

# ------- Driver Code -------

dog = Puppy.new
dog.fetch("ball")
dog.speak(3)
dog.roll_over
p dog.dog_years(3)
dog.wag_tail(true)

# -------------------

# New Class - Car class


class Car

	def turn_on
		puts "*engine purrs*"
	end

	def accelerate
		puts "*vrooom*"
	end

	def slam_breaks
		puts "*screeech*"
	end

	def initialize
		puts "You got a new car!"
	end

end


# Car driver (code) ...  :P

garage = []
50.times do
	garage << Car.new
end

garage.each do |car|
	car.turn_on
	car.accelerate
	car.slam_breaks
end












