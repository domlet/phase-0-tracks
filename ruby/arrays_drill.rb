# At the top of your file, add a method that takes three items 
# as parameters and returns an array of those items. 
# So build_array(1, "two", nil) would return [1, "two", nil]. 
# This won't take much code, but the syntax might feel a bit odd. 
# At the bottom of the file, call the method to show that it works.
def method(x, y, z)
  array = []
  array.push(x, y, z)
  p array
end
method(1, "Barbara", nil)
# At the top of your file, add a method that takes an array 
# and an item as parameters, and returns the array with the item added. 
# So add_to_array([], "a") would return ["a"], 
# and add_to_array(["a", "b", "c", 1, 2], 3) would return 
# ["a", "b", "c", 1, 2, 3]. Print a few test calls of the method.
def we_can_add_things(x)
  array = [ 1, 2, 3]
  array.push(x)
end
p we_can_add_things("cat")
p we_can_add_things("snacks")
p we_can_add_things(true)
# Initialize an empty array and store it in a variable. 
# Print the variable using p.
villains = []
p villains
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