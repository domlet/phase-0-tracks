
# Virus Predictor

# I worked on this challenge [by myself, with: John Kim].
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# 'require_relative' is for files you 'own' (and you point towards it with a relative or partial path) whereas 'require' is for things outside in the world, like gems, and includes a complete path.

require_relative 'state_data'

class VirusPredictor

# assigns initial instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @number_of_months = 0.0
    @number_of_deaths
  end

# calls two other methods
  def virus_effects
    predicted_deaths
    speed_of_spread
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"
    puts " and will spread across the state in #{@number_of_months} months.\n\n"
  end

  private
# calculates predicted deaths based on the population density 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end
  end

# calculates speed of spread based on the population density 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      @number_of_months += 0.5
    elsif @population_density >= 150
      @number_of_months += 1
    elsif @population_density >= 100
      @number_of_months += 1.5
    elsif @population_density >= 50
      @number_of_months += 2
    else
      @number_of_months += 2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value|
  current_state = VirusPredictor.new(key, value[:population_density], value[:population])
  current_state.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One makes you type more (rockets), but they function the same way. 

# What does require_relative do? How is it different from require?
# 'require_relative' is for files you 'own' (and you point towards it with a relative or partial path) whereas 'require' is for things outside in the world, like gems, and includes a complete path.

# What are some ways to iterate through a hash?
# use "do" in either of two formats

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# they were well-named with the exception of 'speed'.

# What concept did you most solidify in this challenge?
# removing additional functions from a method.