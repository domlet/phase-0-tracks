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

p "ho"
puts = "Thank you, #{first_name}."