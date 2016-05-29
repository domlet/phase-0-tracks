# Ask name
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
while likes_garlic != "y" || "n"
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
while likes_insurance != "y" || "n"
  puts "Want some insurance? Please answer with one letter: (y/n)"
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



wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false
  # Now run each of the lines below. 
  # Before hitting Enter on a line, 
  # stop and make a guess as to what it will return, 
  # then see whether you were right. 
  # Remember to think about evaluation order: 
  # anything in parentheses will evaluate first.

wolves_like_garlic && wolves_like_sunshine
wolves_like_garlic || vampires_like_garlic
wolves_like_garlic && vampires_like_garlic
wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
(wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
vampires_like_garlic
!vampires_like_garlic
!(wolves_like_sunshine && wolves_like_garlic)

# Indications of not being a vampire:
age_ancient = false
age_computes = true
likes_garlic = true
likes_insurance = true
has_vampire_name = false

# Vampire detection logic:

if age_computes == true && likes_garlic == true
  
end


# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
# Anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”