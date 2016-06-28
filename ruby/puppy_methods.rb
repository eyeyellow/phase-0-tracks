# class Puppy
#
#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end
#
# end

# rocky = Puppy.new
# rocky.fetch("ball")

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(qty)
    qty.times {puts "woof!"}
  end

  def roll_over
    puts "*Rolls over*"
  end

  def dog_years(age)
    p age/7
  end

  def bite(name)
    puts "Bite #{name}!"
  end

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

#rocky = Puppy.new
#rocky.fetch("ball")
#rocky.speak(5)
#rocky.roll_over
#rocky.dog_years(28)
#rocky.bite("Donald Trump")

# puppies = ["string1", "string2"]
# i = 0
# while i < puppies.length
#   puppies[i] = Puppy.new
#   i += 1
# end

# puppy_names = ["Erinç", "Frank"]
#
# puppies = []
# 50.times do |i|
#   if i % 2 == 0
#   puppies[i] = Puppy.new(puppy_names[0])
# else
#   puppies[i] = Puppy.new(puppy_names[1])
# end
# end
#
# puppies.each {|puppy| puts puppy.name}
# puts puppies

class Computer
  def initialize (name)
    @name = name
  end

  def name
    @name
  end

  def surf(browser)
    puts "Opening #{browser}..."
  end
end

# new_computer = Computer.new("Mac")
# puts new_computer.name
# puts new_computer.surf("Google Chrome")

computer_names = ["Toshiba", "HP", "Asus", "IBM"]

computers = []
50.times do |i|
  if i % 2 == 0
  computers[i] = Computer.new(computer_names[0])
elsif i % 3 == 0
  computers[i] = Computer.new(computer_names[1])
elsif i % 4 == 0
  computers[i] = Computer.new(computer_names[2])
  else
  computers[i] = Computer.new(computer_names[3])
end
end

computers.each do |computer|
  puts computer.name
  puts computer.surf("Mozilla")
end