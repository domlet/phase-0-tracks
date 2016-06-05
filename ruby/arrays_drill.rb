# At the top of your file, add a method that 
# takes three items as parameters 
# and returns an array of those items. 
# So build_array(1, "two", nil) would return [1, "two", nil]. 
# This won't take much code, but the syntax might feel a bit odd. 
# At the bottom of the file, call the method to show that it works.

# At the top of your file, add a method 
# that takes an array and an item as parameters, 
# and returns the array with the item added. 
# So add_to_array([], "a") would return ["a"], 
# and add_to_array(["a", "b", "c", 1, 2], 3) 
# would return ["a", "b", "c", 1, 2, 3]. 
# Print a few test calls of the method.

# Initialize an empty array and store it in a variable 
# Print the variable using p.
new_array = []
p new_array

# Add five items to your array. Print the array.
new_array << "pickles"
new_array << "kimchi"
new_array << "roe"
new_array << "celery"
new_array << "mustard"
puts "add four and we have = " 
p new_array
# Add two more and print.
new_array + ["cheddar cheese", "ginger beer"]
puts "add two more = " 
p new_array

# Delete the item at index 2. Print the array.

# Insert a new item at index 2. Print the array.

# Remove the first item of the array without having to refer to its index. Print the array.

# Ask the array whether it includes a certain item. 
# Print the result of this method call (label it to provide context)

# Initialize another array that already has a few items in it.
next_array = ["1", "2", "3", "4"]
p next_array
# Add the two arrays together and store them in a new variable. 
# Print the new array.
combined_array = new_array + next_array
p combined_array