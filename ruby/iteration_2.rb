# write your own method that takes a block
# method should print out a status message before and after running the block

def say_hello(name1, name2)
  puts "before"
  puts "Why, hello there!"
  yield(name1, name2)
  puts "after"
end

say_hello("dom", "alexis") { |name1, name2| puts "Great to see you #{name1} and #{name2}!"}

# declare an array and a hash
# populate each of them with some data

#array
flowers = ["rose", "petunia", "daisy"]
#hash
books = {politics: "No Logo", sociology: "Work", history: "The Rape of Nanking"}

# iterate through each one using .each, and then using .map! (modifying the data in some way). Note that you can't call .map! on a hash, so you can skip that (.map returns an array, so a destructive map method is logically impossible on a hash). Print the data structures before and after each call to demonstrate whether they have been modified or not.

# each on array
puts "\n"
p flowers
flowers.each {|flower| puts "I like to see a good #{flower}!"}
p flowers

# map on array
puts flowers #before
flowers.map! { "Hello" }
puts flowers

# each on hash
puts "\n"
p books
books.each { |subject, title| puts "The #{subject} book I'm reading is called #{title}."}
p books