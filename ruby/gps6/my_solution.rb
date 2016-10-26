# Virus Predictor

# I worked on this challenge [by myself].
# We spent [1] hour on this challenge.

# EXPLANATION OF require_relative
# Imports or includes code from another file into the current file.
# require loads directly to the path you provide, whereas require_relative loads a file relative to your file's current directory
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls predicted_deaths and speed_of_spread
  # nil
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # takes 3 args
  # reads population density and sets number of deaths based on popluation density
  # prints info about how many people will die in this state
  # returns nil
  def predicted_deaths
    # predicted deaths is solely based on population density

    number_of_deaths = case @population_density
      when 0..49 then (@population * 0.05).floor
      when 50..99 then (@population * 0.1).floor
      when 100..149 then (@population * 0.2).floor
      when 150..199 then (@population * 0.3).floor
      else (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # takes two args
  # sets default speed to 0
  # based on pop. density, adds to the speed variable
  # prints statement about number of months it will take for disease to spread
  # nil
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    speed = case @population_density
      when 0..49 then 2.5
      when 50..99 then 2
      when 100..149 then 1.5
      when 150..199 then 1
      else 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# iterate through data from STATE_DATA
# STATE_DATA.each do |key, value|
#   # create new instance of VirusPredictor for each state
#   new_instance = VirusPredictor.new(key, value[:population_density], value[:population])
#   # call #virus_effects for each instance
#   new_instance.virus_effects
# end





alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
# *What are the differences between the two different hash syntaxes shown in the state_data file?
# => One uses strings as a key, the other uses symbols
# *What does require_relative do? How is it different from require?
# => Imports or includes code from another file into the current file. Require loads directly to the load path you provide, 
      # whereas require_relative loads a file relative to your file's current directory
# *What are some ways to iterate through a hash?
# => .each, .each_pair, .each_value
# *When refactoring virus_effects, what stood out to you about the variables, if anything?
# => they were all instance variables
# *What concept did you most solidify in this challenge?
# => There are often multiple ways to complete a solution. Just because one works doesn't mean it is the BEST solution!










