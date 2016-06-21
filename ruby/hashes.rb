=begin

Pseudocode:
  -Prompt user item-by-item + get string:
    Name (string) - :name
    Age (integer) - :age
    Number of children (integer) - :children
    Decor theme (string) - :decor
    Allergic to cats? (boolean) - :cat_allergy
  -Prompt user to update key
    -if none, then skip it
    -otherwise, ask for key
      -get string from user -> convert to symbol
      -Ask user to input new value
      -change value of key
  -Print array at the end

=end


puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "How many children do you have?"
children = gets.chomp.to_i
puts "What kind of decor theme do you like?"
decor = gets.chomp
puts "Are you allergic to cats?"
def cats(allergy)
  allergy == "yes"
end
cat_allergy = cats(gets.chomp)

answers = {name: name, age: age, children: children, decor: decor, cat_allergy: cat_allergy}

puts answers


def modify_hash(answers)
  puts "Choose what you would like to update:\nname?\nage?\nchildren?\ndecor?\ncat_allergy?"
  key = gets.chomp.to_sym
  puts "What do you want the new value for #{key} to be?"
  value = gets.chomp
  answers[key] = value
end

puts "Would you like to update anything?"
modify_hash(answers) if gets.chomp == "yes"

puts answers