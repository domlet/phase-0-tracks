# pseudocode and write a program 
# that will allow an interior designer 
# to enter the details of a given client

# keys should be symbols unless you need a string
# Basically, symbols are simpler for programmers to use, 
# and readable enough by technical folks to be 
# used in place of strings most of the time.

# Your program should ...

# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when answered all questions.
# Give the user the opportunity to update a key 
# (no need to loop, once is fine). 
# After all, sometimes users make mistakes! 
# If the designer says "none", skip it. 
# But if the designer enters "decor_theme" (for example), 
# your program should ask for a new value 
# and update the :decor_theme key. 
# (Hint: Strings have methods that will turn them into symbols, 
# which would be quite handy here.) 
# You can assume the user will correctly input a key that exists 
# in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.
# Be sure to pseudocode, and leave your pseudocode in as comments.

# Learning outcomes:
#  1 Initialize a hash
#  2 Add an item to a hash
#  3 Modify an item in a hash
#  4 Write readable code


interior_design_client = {}

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

# wants_update = gets.chomp
# if wants_update == "none"
#   puts "Awesome, thanks for the flawless entry."
# elsif
#   new_value = gets.chomp
#   puts "Enter a new value for #{new_value}" 
#   test = gets.chomp
#   puts test
# end




# Print output
puts interior_design_client


