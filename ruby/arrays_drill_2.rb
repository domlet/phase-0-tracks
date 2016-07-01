# Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.

array = []

# Add five items to your array. Print the array.

array.push(1, 2, 3, 4, "shoe")

p array

# Delete the item at index 2. Print the array.

array.delete_at(2)

p array

# Insert a new item at index 2. Print the array.

array.insert(2, "scuba gear")

p array

# Remove the first item of the array without having to refer to its index. Print the array.

array.shift()

p array

# Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)

puts "Does this array include '2'?"
p array.include?(2)

# Initialize another array that already has a few items in it.

array_two = [7, 8, 9, "blue"]

p array

# Add the two arrays together and store them in a new variable. Print the new array.

array_combined = array + array_two

p array_combined