# design and build a nested data structure to represent a real-world construct. use a mix of hashes and arrays.

# print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.

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
    "tools" => "plunger", 
    "bottles" => ["ammonia", "windex", "bleach"],
    "cans" => "scrubbing powder" 
  }
}


# 1 array
puts "\n"
puts "// Add new item to array //"
p bathroom["cosmetics"]
bathroom["cosmetics"].push("eyeliner")
p bathroom["cosmetics"]

# 2 array
puts "\n"
puts "// Only keep a specified item (array) //"
p bathroom["appliances"]
bathroom["appliances"].keep_if {|x| x == "curling iron"}
p bathroom["appliances"]

# 3 hash
puts "\n"
puts "// Only keep a specified item (hash) //"
p bathroom["industrial"]
bathroom["industrial"]["bottles"].keep_if { |item| item == "ammonia" }
p bathroom["industrial"]
