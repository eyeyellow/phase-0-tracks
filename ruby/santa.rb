class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    #puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(name)
    @reindeer_ranking.delete(name)
    @reindeer_ranking << name
    puts @reindeer_ranking
  end

end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []
10.times do |i|
  santas[i] = Santa.new(example_genders.sample, example_ethnicities.sample)
  Random.new.rand(100).times {santas[i].celebrate_birthday}
  puts "Santa \##{i + 1} is #{santas[i].age} years old, #{santas[i].gender}, and #{santas[i].ethnicity}."
end

=begin
santas = []
gend_and_eth = [["male", "latino"], ["female", "black"], ["agender", "white"], ["female", "Persian"]]
gend_and_eth.each_with_index do |gen_eth, index|
  santas << Santa.new(gen_eth[0], gen_eth[1])
  puts "Santa \##{index + 1} is a #{gen_eth[1]} #{gen_eth[0]}."
end
=end


