# write your own method that takes a block. 
# Your method should print out a status message 
# before and after running the block. 
# Your block doesn't have to do anything fancy -- 
# it can just print out several of its own parameters.
def method
  puts "Hello."
  3.times{ yield }
  puts "Done."
end
method { puts "hey hey"}

# declare an array and a hash, 
# and populate each of them with some data.
array = ["you", "me", "mama", "bob"]
rooms = {bathroom: "sink", kitchen: "stove", bedroom: "bed"}
# Demonstrate that you can iterate through each one using .each
#array
array.each {|x| puts "Hello #{x}"}
p array
#hash
rooms.each { |room, feature| puts "In the #{room} there is a #{feature}."}
# Demonstrate that you can iterate through each one using .each
#array
array.each do
  |x|
  puts "Hey hey #{x}"
end
#hash
rooms.each do
  |room, feature|
  puts "In each #{room} there is a #{feature}."
end
 # Use .map! (modifying the data in some way)
 #array
puts array #before
array.map! do
  "Hello"
  end
puts array #after

array = ["hot", "cold", "warm"]
pairs = {north: "1", south: "2", east: "3", west: "4"}

# A method that iterates through the items, 
# deleting any that meet a certain condition 
#array
puts array.delete_if {|x| x == "hot"}
#hash
puts pairs.delete_if {|direction, digit| digit == "1"}

# A method that filters a data structure for only items 
# that do satisfy a certain condition 
array = ["blue", "red", "yellow"]
pairs = {a: "1", b: "2", c: "3", d: "4"}

#array
puts array.keep_if {|x| x == "yellow"}
#hash
puts pairs.keep_if {|direction, digit| digit == "1"}

# A different method that filters a data structure 
# for only items satisfying a certain condition
#array
array = [1, 20, 3, 40, 5, 100]
puts array.drop_while {|i| i < 3 } 

#hash
months = { "jan" => 1, "feb" => 2, "mar" => 3 }
puts months.select {|k,v| k == "jan"}  

# A method that will remove items from a data structure 
# until the condition in the block evaluates to false, then stops.

#hash
days = { "Monday" => 10, "Tuesday" => 11, "Wednesday" => 12 }
puts days.reject {|k,v| v > 11}  

#array
arr = [100, 200, 300, 400, 50, 600]
arr.reject! { |a| a < 200 }  
puts arr                         

