# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is a subset of require that only needs a file location relative 
# to the current file. Require is more general in that you need to specify a path.
#
require_relative 'state_data'

class VirusPredictor

  # Declaring the attributes of each instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Running the methods 'predicted_deaths' and 'speed_of_spread'
  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  # used to control accessibility
  private

  # Gives predicted deaths of each state based on conditional factors of population density and population
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

  end

  # predicts the timescale of spread of the virus based on population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    timescale = 0.0

    if @population_density >= 200
      timescale += 0.5
    elsif @population_density >= 150
      timescale += 1
    elsif @population_density >= 100
      timescale += 1.5
    elsif @population_density >= 50
      timescale += 2
    else
      timescale += 2.5
    end

  end

end

def state_reports

  STATE_DATA.each do |state, state_value|
    state_virus_predictor = VirusPredictor.new(state, state_value[:population_density], state_value[:population])
    state_virus_predictor.virus_effects
  end

end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

state_reports

#=======================================================================
# Reflection Section