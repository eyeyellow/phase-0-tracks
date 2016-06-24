# Reverse the names and output them in an array
def rev(name)
  name.split(' ').reverse
end

# Reassign vowel to next vowel in sequence
def next_vowel(vowel)
  vowels = "aeiou".split('')
  if vowel == "u"
    vowel = "a"
  else
    vowels.each_with_index do | char, i |
      return vowels[i + 1] if vowel == char
    end
  end
end

# Reassign consonant to next vowel in sequence
def next_cons(consonant)
  consonants = "bcdfghjklmnpqrstvwxyz".split('')
  if consonant == "z"
    consonant = "b"
  else
    consonants.each_with_index do | char, i |
      return consonants[i + 1] if consonant == char
    end
  end
end

# Make characters downcase for checking
# Iterate through name arrays to check whether characters are vowels or consonants
# Make first characters upcase again
# Join character arrays back together
def name_alias(name)
  vowels = "aeiou".split('')
  consonants = "bcdfghjklmnpqrstvwxyz".split('')
  name = name.downcase.split('')
  name.map! do | char |
    if vowels.include?(char)
      next_vowel(char)
    elsif consonants.include?(char)
      next_cons(char)
    else
      return char
    end
  end
  name[0].upcase!
  return name.join('')
end

# Calls rev and name_alias methods to cut up words
# Concatenates words back together and outputs alias name
def name_concat(input_name)
  split_name = rev(input_name)
  name1 = name_alias(split_name[0])
  name2 = name_alias(split_name[1])
  return name1 + " " + name2
end

# User interface
name_hash = {}

puts "Please enter your name:\n"
input_name = gets.chomp
output_name = name_concat(input_name)
name_hash[input_name] = output_name
puts "\nYour spy name is:\n#{output_name}\n\nEnter another name, or type 'quit' to exit."
next_input_name = gets.chomp


until next_input_name == "quit"

  output_name = name_concat(next_input_name)
  name_hash[next_input_name] = output_name
  puts "\nYour spy name is:\n#{output_name}\n\nEnter another name, or type 'quit' to exit."
  next_input_name = gets.chomp

end

# Outputs array of saved alias names
puts "\n"

name_hash.each do | real, spy |
  puts "#{spy} is actually #{real}.\n"
end




=begin

-input: string
-swap first name with last name
  -convert string to array (.split(' ')), then .reverse
-then, within each string of the array (using indices), iterate through each letter and call methods to:
  -swap vowel with next vowel in "aeiou" (using indices)
  -swap conss with next consonant (also, indices)


Alternative next_vowel method

def next_vowel2 (vowel)
  vowels = ["a", "e", "i", "o", "u"]
  return unless vowels.include?(vowel)
  vowels.each_with_index do | char, i |
    if vowel == char
      return vowels.first if i == vowels.length
      return vowels[i + 1]
    end
  end
end
=end