# Initialize an empty array and store it in a variable 
# (you can choose the name). Print the variable using p.

villains = []

# Add five items to your array. Print the array.
villains << "The Joker" 
villains << "The Riddler"
villains << "Penguin"
villains << "The Cigarette Smoking Man"
villains << "The Devil"
p villains
# Delete the item at index 2. Print the array.
villains.delete_at(2)
p villains
# Insert a new item at index 2. Print the array.
villains.insert(2, "Poison Ivy") 
p villains
# Remove the first item of the array without having to refer to its index. Print the array.
villains.shift
p villains
# Ask the array whether it includes a certain item. 
# Print the result of this method call (labeled to give context.)
print "Does this array include 'The Devil'? "
p villains.include?("The Devil")
# Initialize another array that already has a few items in it.
heroes = ["Jessica Jones", "Spiderman", "Thor"]
# Add the two arrays together and store them in a new variable. 
# Print the new array.
everybody_dance_now = villains + heroes
p everybody_dance_now