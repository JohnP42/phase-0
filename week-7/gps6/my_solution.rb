# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative uses the path relative to the file location as opposed to the absolute path.
#
require_relative 'state_data'

class VirusPredictor
  #Instatiates the instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Prints the results of the virus effects.
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private
  # predicts the deaths based on the population and population density, and prints the result.
  def predicted_deaths()
    # predicted deaths is solely based on population density
    # Not the same as before but more accurate
    number_of_deaths = (@population * (@population_density / 500)).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  #Predicts the speed of spreed based on population density and prints the results.
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state_name, pop_data|
  VirusPredictor.new(state_name, pop_data[:population_density], pop_data[:population]).virus_effects;
end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# => One uses the symbol format and the other uses the hash rocket. 

# What does require_relative do? How is it different from require?
# => require_relative uses the path relative to the file location as opposed to the absolute path.

# What are some ways to iterate through a hash?
# => enumerable methods, while loops, etc.

#When refactoring virus_effects, what stood out to you about the variables, if anything?
# => Instance variables don't need to be passed as parameters

#What concept did you most solidify in this challenge?
# => @@ means class variables.