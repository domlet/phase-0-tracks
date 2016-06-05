# pseudocode 
# create an array
# for each of 5 keys in that array
#   create a symbol
#   prompt user for value
#   assign the value to the key/symbol
# print the array
# prompt the user for changes to any key
# prompt the user for changed value for the key
# overwrite previous value with the new value
# print the array

# Create array
interior_design_client = {}
# Create keys and values
print "Enter client's name: "
interior_design_client[:name] = gets.chomp
print "Enter client's age: "
interior_design_client[:age] = gets.chomp.to_i
print "How many children does this client have? "
interior_design_client[:number_of_children] = gets.chomp.to_i
print "Describe decor theme: "
interior_design_client[:decor_theme] = gets.chomp
print "Does the client have pets? y/n "
has_pets = gets.chomp
while has_pets != ("y" || "n")
  print "Does the client have pets? y/n "
  has_pets = gets.chomp
end
if has_pets == "y"
  has_pets = true
else has_pets == "n"
  has_pets = false
end
interior_design_client[:has_pets] = has_pets
# Print output
puts "\n"
puts interior_design_client
# Automatically ask for changes
puts "
| Do you want to update this data? 
| If no, type 'none' and hit Enter
| If yes, type the key:
| name | age | number_of_children | decor_theme | has_pets |"

wants_update = gets.chomp # user indicates key

# Request and receive changes
if wants_update == "none"
  puts "Awesome, thanks for the flawless entry."
elsif wants_update == "name"
  print "Enter a new value for #{wants_update}: " 
  interior_design_client[:name] = gets.chomp
elsif wants_update == "age"
  print "Enter a new value for #{wants_update}: " 
  interior_design_client[:age] = gets.chomp.to_i
elsif wants_update == "number_of_children"
  print "Enter a new value for #{wants_update}: " 
  interior_design_client[:number_of_children] = gets.chomp.to_i
elsif wants_update == "decor_theme"
  print "Enter a new value for #{wants_update}: " 
  interior_design_client[:decor_theme] = gets.chomp
elsif wants_update == "has_pets"
  print "Enter a new value for #{wants_update} (true/false): " 
  interior_design_client[:has_pets] = gets.chomp
else
  puts "Sorry dude, your input was incomprehensible."
end
# Print output
puts interior_design_client