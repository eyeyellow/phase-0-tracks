# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# The require_relative grabs the code from the file in quotations
# Require_relative is used when the file provided is in the same folder, whereas require needs more information on the folder from which to grab the .rb file
require_relative 'state_data'

class VirusPredictor

#initialize method which takes variabes upon creating an instance of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Calls two methods
  def virus_effects
  #  predicted_deaths(@population_density, @population, @state)
  #  speed_of_spread(@population_density, @state)
    predicted_deaths
    speed_of_spread
  end

#Methods within private cannot be used outside of the class
  private

#takes three variables and applies conditional flow logic to predict number of deaths
#we guees .floor method will round values down
  def predicted_deaths #(population_density, population, state)
    predicted deaths is solely based on population density
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

##Refactor attempt - we tried to use a case method, it would not work
    # case population_density
    # when >=200
    #   number_of_deaths = (@population * 0.4).floor
    # when >=150
    #   number_of_deaths = (@population * 0.3).floor
    # when >=100
    #   number_of_deaths = (@population * 0.2).floor
    # when >=50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#this method takes two variables and applies conditional flow logic to predict the speed of the spread of the disease
#will output string with speed variable interpolated and the speed variable is being calculated within the method
  def speed_of_spread #(population_density, state) #in months
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

#Driver code creates new instances of the VirusPredictor class and includes three arguments
#first argument is the state of origin, second argument and third argument point to the figures in the state_date file (specifically the value within another value (i.e., nested data structure))
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# Feature - Release 5

STATE_DATA.each do |state, pop_data|
  new_instance = VirusPredictor.new(state,pop_data[:population_density],pop_data[:population])
  new_instance.virus_effects
end




#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
    #There is a rocket symbol that is used after a key (such as a string), or you can use a colon after a symbol.

# What does require_relative do? How is it different from require?
    # The require_relative grabs the code from the file in quotations
    # Require_relative is used when the file provided is in the same folder, whereas require needs more information on the folder from which to grab the .rb file

# What are some ways to iterate through a hash?
    # .each, .times or two ways we have become familiar with

# When refactoring virus_effects, what stood out to you about the variables, if anything?
    # They were instance variables so they did not have to be passed into the methods b/c they were already available to all the methods in the class

# What concept did you most solidify in this challenge?
    # Creating a placeholder variable inside of a loop can be helpful to accomplish a task.