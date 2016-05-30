# Ask qty
puts "How many employees will be processed?"
num = gets.chomp.to_i
num.times do

# Ask name
puts "------------------ BEGIN ------------------"
puts "What is your first name?"
first_name = gets.chomp
# Require a response
while first_name == ""
  puts "Please answer. What is your first name?"
  first_name = gets.chomp
end
puts "What is your last name?"
last_name = gets.chomp
# Require a response
while last_name == ""
  puts "Please answer. What is your last name?"
  last_name = gets.chomp
end

# Report name
full_name = first_name.capitalize + " " + last_name.capitalize
puts "Thank you, #{full_name}."

# Check name
if full_name == "Drake Cula"
  has_vampire_name = true
elsif full_name == "Tu Fang"
  has_vampire_name = true
else
  has_vampire_name = false
end

# Report if vampire alias
if has_vampire_name == true
  puts "has_vampire_name is true"
else
  puts "has_vampire_name is false"
end

# Ask age
puts "How old are you? (Enter an integer.)"
age = gets.chomp
# Require a response
while age == ""
  puts "Please answer. How old are you? (Enter an integer.)"
  age = gets.chomp
end
# Require an integer greater than 0
while age.to_i == 0
    puts "Please enter an integer greater than 0. How old are you?"
    age = gets.chomp
end

# Check if age is ancient
if age.to_i > 99
  age_ancient = true
else
  age_ancient = false
end

# Ask birth year
puts "What year were you born? (Enter an integer.)"
year_of_birth = gets.chomp
# Require a response
while year_of_birth == ""
  puts "Please answer. What year were you born? (Enter an integer.)"
  year_of_birth = gets.chomp
end
# Require an integer greater than 0
while year_of_birth.to_i == 0
    puts "Please enter an integer greater than 0. What year were you born?"
    year_of_birth = gets.chomp
end

# Report age and birth year info
puts "You say you're #{age} years old and were born in #{year_of_birth}."

# Check if age computes
current_year = Time.new.year # Create instance of current year
if year_of_birth.to_i + age.to_i == current_year
  age_computes = true  
  puts "age_computes is true"
elsif year_of_birth.to_i + age.to_i == current_year - 1
  age_computes = true # birthday is later this year
  puts "age_computes is true enough"
else
  age_computes = false
  puts "age_computes is false"
end

# Ask about garlic
puts "Want some garlic bread? (y/n)"
likes_garlic = gets.chomp
# Check if likes garlic
while likes_garlic != "y" && likes_garlic != "n"
  puts "Want some garlic bread? (y/n)"
  likes_garlic = gets.chomp
end

if likes_garlic == "y"
  likes_garlic = true
elsif likes_garlic == "n"
  likes_garlic = false
end


# Report on garlic
if likes_garlic == true
  puts "likes_garlic is true"
else 
  puts "likes_garlic is false"
end


# Ask about insurance
puts "Would you like to enroll in the company’s health insurance? (y/n)"
likes_insurance = gets.chomp
# Require a response
while likes_insurance != "y" && likes_insurance != "n"
  puts "Please answer with one letter: (y/n) Want some insurance? "
  likes_insurance = gets.chomp
end

if likes_insurance == "y"
  likes_insurance = true
elsif likes_insurance == "n"
  likes_insurance = false
end
# Report on insurance
if likes_insurance == true
  puts "likes_insurance is true"
else 
  puts "likes_insurance is false"
end
puts "\n"

# use a loop to ask the employee to name any allergies, 
# one at a time. The employee can type “done” when finished.
# As long as the allergy is not “sunshine,” 
# continue the loop for as long as is needed. 
# If at any point the employee lists “sunshine” as an allergy, 
# skip directly to the result of “Probably a vampire.”

# Ask about allergies
puts "Do you have any allergies?\nName them one at a time and press enter. \nWhen you\'re finished, type 'done' and press enter."
array = []
input = ' '
while input != 'done' && input != 'sunshine'
  input = gets.chomp
  array.push input
end
# Check for sunshine
if array.include? 'sunshine'
  allergic_to_sunshine = true
  puts "allergic_to_sun is true"
  is_vampire = "Probably"
else
  allergic_to_sunshine = false
  puts "allergic_to_sun is false"
end

# Match the following conditions in the order they're listed. 
# Your program should base its result on the latest condition matched, 
# not the first condition matched. 
# In other words, it's not a "only one condition will apply" scenario. 
# This may mean repeatedly updating a variable as each condition is checked, 
# so that the variable always contains the most precise result.

# Vampire detection logic:
# age right, and willing to eat garlic or sign up for insurance
# “Probably not.”

is_vampire = "Inconclusive"
if age_computes == true && (likes_garlic == true || likes_insurance == true)
  is_vampire = "Probably not"
end
# age wrong, and hates garlic bread or waives insurance
# “Probably.”
if age_computes == false && (likes_garlic == false || likes_insurance == false)
  is_vampire = "Probably"
end
# age wrong, hates garlic bread, and doesn’t want insurance
# “Almost certainly.”
if age_computes == false && likes_garlic == false && likes_insurance == false
  is_vampire = "Almost certainly"
end
# “Drake Cula” or “Tu Fang” 
# “Definitely a vampire.”
if has_vampire_name == true
  is_vampire = "Definitely"
# Otherwise, print “Results inconclusive.”
end

if allergic_to_sunshine == true
  puts "\nRESULT: Probably a vampire"
elsif is_vampire == "Inconclusive"
  puts "\nRESULT: Results inconclusive."
else
  puts "\nRESULT: #{is_vampire} a vampire."
end

puts "------------------- END -------------------"

# End qty do loop
end

puts "Actually, never mind!\nWhat do these questions have to do with anything?\nLet's all be friends.\n"
puts "-------------------THE REAL END -------------------"