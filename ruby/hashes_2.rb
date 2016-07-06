# enter the details of a given client: 
# name
# age
# number of children
# decor theme
# vegan y/n
# keys should be symbols.
# Your program should ...
# Prompt the designer/user for all info
# Convert user input to appropriate data type.
# Print hash to screen when done.

# # # PSEUDOCODE # # # 
# create an array 
# intake user entry for each data point, assigning to a symbol
# convert strings to integers and booleans where appropriate

client = {}

print "Client name: "
client[:name] = gets.chomp
print "Age: "
client[:age] = gets.chomp.to_i
print "Number of children: "
client[:num_of_children] = gets.chomp.to_i
print "Decor theme: "
client[:decor_theme] = gets.chomp
print "Vegan? y/n: "
client[:is_vegan] = gets.chomp

if client[:is_vegan] == "y"
  client[:is_vegan] = true
  elsif client[:is_vegan] == "n"
  client[:is_vegan] = false
  else
  client[:is_vegan] = nil
end

p client

# opportunity to update a key (once is fine)
# If designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.

# # # PSEUDOCODE # # # 
# ask user to type symbol if changes desired
# associate symbols with new data entry, update value
# reprint array

puts "
Do you want to update this data? 
If no, type 'none' and hit Enter
If yes, type the key:
name | age | num_of_children | decor_theme | is_vegan"

wants_update = gets.chomp # user indicates key

if wants_update == "none"
  puts "Awesome, thanks for the flawless entry."
elsif wants_update == "name"
  print "Enter a new value for #{wants_update}: " 
  client[:name] = gets.chomp
elsif wants_update == "age"
  print "Enter a new value for #{wants_update}: " 
  client[:age] = gets.chomp.to_i
elsif wants_update == "num_of_children"
  print "Enter a new value for #{wants_update}: " 
  client[:num_of_children] = gets.chomp.to_i
elsif wants_update == "decor_theme"
  print "Enter a new value for #{wants_update}: " 
  client[:decor_theme] = gets.chomp
elsif wants_update == "is_vegan"
  print "Enter a new value for #{wants_update} (y/n): " 
  client[:is_vegan] = gets.chomp
  if client[:is_vegan] == "y"
    client[:is_vegan] = true
    elsif client[:is_vegan] == "n"
    client[:is_vegan] = false
    else
    client[:is_vegan] = nil
  end
else
  puts "Sorry dude, your input was incomprehensible."
end

p client