puts "------------begin-----------\nWhat is your name?"
name = gets.chomp
name.capitalize!
puts = "Thanks #{name}, give us a moment while we run a background check."
# Check database for matches.


puts "How old are you? (Enter an integer.)"
age = gets.chomp
# Check if they're a hundred (or more) years old.
if age.to_i > 99
  puts "*VAMPIRE ALERT* Subject is 100 or more years old."
else
  puts "Thanks."
end


puts "What year were you born? (Enter an integer.)"
year_of_birth = gets.chomp
# Check if age and year of birth equate.

# Create instance of current year
current_year = Time.new.year

if year_of_birth.to_i + age.to_i ==  current_year
  puts "Yay, that computes."
elsif year_of_birth.to_i + age.to_i == current_year - 1
  puts "Your birthday must be later this year."
else
  puts "*VAMPIRE ALERT* That does not compute."
end

puts "Should we order some garlic bread for you? y/n"
order_garlic_bread = gets.chomp
# Vampires hate garlic. 
if order_garlic_bread == "n"
  puts "*VAMPIRE ALERT* Subject declines garlic bread.\n"
elsif order_garlic_bread == "y"
  puts "Excellent, you'll fit right in at lunchtime.\n"
else 
  puts "Whoa, please enter lowercase y or n."
  order_garlic_bread = gets.chomp
end

puts "Would you like to enroll in the company’s health insurance? y/n"
enroll_health_insurance = gets.chomp
# Vampires are immortal, don’t need health insurance.
if enroll_health_insurance == "n"
  puts "*VAMPIRE ALERT* Subject may be immortal.\n------------end-----------"
else
  puts "Great, you're probably mortal like the rest of us.\n------------end-----------"
end

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
# Anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”
