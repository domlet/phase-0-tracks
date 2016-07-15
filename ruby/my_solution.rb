
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @number_of_months = 0.0
    @number_of_deaths
  end

  def virus_effects
    predicted_deaths
    speed_of_spread

    ## put it here
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"
    puts " and will spread across the state in #{@number_of_months} months.\n\n"
  end

  private

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


# Alabama will lose 482202 people in this outbreak and will spread across the state in 2.0 months.
# New Jersey will lose 3545836 people in this outbreak and will spread across the state in 0.5 months.
# California will lose 15216572 people in this outbreak and will spread across the state in 0.5 months.
# Alaska will lose 36572 people in this outbreak and will spread across the state in 2.5 months.


#=======================================================================
# Reflection Section
