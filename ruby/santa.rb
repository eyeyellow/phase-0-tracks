class Santa
  def initialize (gender, ethnicity)
    #puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies (cookie)
    "That was a good #{cookie}!"
  end
end

santas = []
gend_and_eth = [["male", "latino"], ["female", "black"], ["agender", "white"], ["female", "Persian"]]
gend_and_eth.each_with_index do |gen_eth, index|
  santas << Santa.new(gen_eth[0], gen_eth[1])
  puts "Santa \##{index + 1} is a #{gen_eth[1]} #{gen_eth[0]}."
end