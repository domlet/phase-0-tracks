# At the top of your file, add a method that takes three items as parameters and returns an array of those items. So build_array(1, "two", nil) would return [1, "two", nil]. This won't take much code, but the syntax might feel a bit odd. At the bottom of the file, call the method to show that it works.

def build_array(a, b, c)
  new_array = [a, b, c]
end

test = build_array("dom", "alexis", "levi")
p test

# At the top of your file, add a method that takes an array and an item as parameters, and returns the array with the item added. So add_to_array([], "a") would return ["a"], and add_to_array(["a", "b", "c", 1, 2], 3) would return ["a", "b", "c", 1, 2, 3]. Print a few test calls of the method.

def add_to_array(x, y)
  combined_array = x
  combined_array.push(y)
end

testing_add_to_array = add_to_array([8, 7, 6], 1)
p testing_add_to_array

testing_add_to_array = add_to_array([], 12)
p testing_add_to_array

testing_add_to_array = add_to_array(["doobie"], "noobie")
p testing_add_to_array

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