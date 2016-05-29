puts "What is your name?"
name = gets.chomp
name.capitalize!
puts = "Thanks #{name}, give us a moment while we run a background check."
# Check database for matches.


puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
year_of_birth = gets.chomp
# Check if age and year of birth equate.


puts "Should we order some garlic bread for you? y/n"
order_garlic_bread = gets.chomp
# Vampires hate garlic. 
case order_garlic_bread
when order_garlic_bread == "n"
  puts "We think you might be a vampire because you don't want garlic bread."
when order_garlic_bread == "y"
  puts "Excellent, you'll fit right in at lunchtime."
else 
  puts "Please enter lowercase y or n."
  order_garlic_bread = gets.chomp
end

puts "Would you like to enroll in the company’s health insurance? y/n"
enroll_health_insurance = gets.chomp
# Vampires are immortal, don’t need health insurance.
if enroll_health_insurance == "n"
  puts "We think you might be a vampire because you don't want health insurance."
else
  puts "Great, you're mortal like the rest of us."
end

