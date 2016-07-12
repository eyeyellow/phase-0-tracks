puts "How many employees do you want to process?"
employee_number = gets.chomp.to_i
while employee_number > 0

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic = gets.chomp

  puts "Would you like to enroll in the company’s health insurance?"
  insurance = gets.chomp

  puts "Name any allergies that you have. Type 'done' when you are finished"
  allergies = gets.chomp

  until allergies === "done"
    if allergies === "sunshine"
      puts "Probably a vampire."
      break
    else
      puts "Any other allergies?"
      allergies = gets.chomp
    end
  end


  if name === "Drake Cula"
    vampire_name = true
  elsif name === "Tu Fang"
    vampire_name = true
  elsif vampire_name != ""
    vampire_name = false
  else
    vampire_name = nil
  end

  if age > 100 || year < 1916
    vampire_age = true
  elsif age <= 100 || year >= 1916
    vampire_age = false
  else
    vampire_age = nil
  end

  if garlic === "no"
    vampire_garlic = true
  elsif garlic === "yes"
    vampire_garlic = false
  else
    vampire_garlic = nil
  end

  if insurance === "no"
    vampire_insurance = true
  elsif insurance === "yes"
    vampire_insurance = false
  else
    vampire_insurance = nil
  end

  unless allergies === "sunshine"
    if vampire_name === nil || vampire_age === nil || vampire_garlic === nil || vampire_insurance === nil
      puts "Results inconclusive."
    elsif  vampire_name
      puts "Definitely a vampire."
    elsif vampire_age && vampire_garlic && vampire_insurance
      puts "Almost certainly a vampire."
    elsif vampire_age && (vampire_garlic || vampire_insurance)
      puts "Probably a vampire."
    elsif !(vampire_age && (vampire_garlic || vampire_insurance))
      puts "Probably not a vampire."
    else
      puts "Results inconclusive."
    end
  end

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

employee_number -= 1
end
