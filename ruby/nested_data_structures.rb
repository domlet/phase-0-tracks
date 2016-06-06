# design and build a nested data structure to represent
# a real-world construct. Use a mix of hashes and arrays.

# Once you've built it, print a few individual pieces
# of deeply nested data from the structure,
# showing that you know how to use multiple indexes
# or hash keys (or both) to access nested items.
# Try to demonstrate a few different types of access.

bathroom = {
  "cosmetics" => [ 
    "facial mask", 
    "face powder", 
    "curl activator" 
  ],
  "hygiene" => [
    "tube of toothpaste", 
    "bar of soap", 
    "jar of q-tips" 
  ],
  "appliances" => [
    "blow dryer", 
    "curling iron", 
    "electric razor" 
  ],
  "industrial" => {
    "tool" => "plunger", 
    "bottle" => ["ammonia", "windex"],
    "can" => "scrubbing powder" 
  }
}

# 1 array
puts "\nAdd new item to array, then print:"
puts bathroom["cosmetics"].push("eyeliner")
# 2 array
puts "\nOnly keep the specified item from array 'curling iron'."
puts bathroom["appliances"].keep_if {|x| x == "curling iron"}
# 3 hash
puts "\nOnly keep the specified item from hash 'ammonia'."
puts bathroom["industrial"]["bottle"].keep_if { |a, b| b == "ammonia" }