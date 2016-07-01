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
puts "\n"
p flowers
flowers.map! { |flower| "Dom Brassey selected a #{flower}." }
p flowers

# each on hash
puts "\n"
p books
books.each { |subject, title| puts "The #{subject} book I'm reading is called #{title}."}
p books

# release 2

array = ["hot", "cold", "warm"]
pairs = {north: "1", south: "2", east: "3", west: "4"}

# A method that iterates through the items, 
# deleting any that meet a certain condition 
#array
puts "\n"
p array
puts array.delete_if {|x| x == "hot"}
#hash
puts "\n"
p pairs
puts pairs.delete_if {|direction, digit| digit == "1"}

# A method that filters a data structure for only items 
# that do satisfy a certain condition 
array = ["blue", "red", "yellow"]
pairs = {a: "1", b: "2", c: "3", d: "4"}

#array
puts "\n"
p array
puts array.keep_if {|x| x == "yellow"}
#hash
puts "\n"
p pairs
puts pairs.keep_if {|direction, digit| digit == "1"}

# A different method that filters a data structure 
# for only items satisfying a certain condition
#array
array = [1, 20, 3, 2, 5, 100]
puts "\n"
p array
puts array.drop_while { |a| a < 100 }
p array

#hash
months = { "jan" => 1, "feb" => 2, "mar" => 3 }
puts "\n"
p months
puts months.select {|month_abbrev,numeral| month_abbrev == "jan"}  
p months

# A method that will remove items from a data structure 
# until the condition in the block evaluates to false, then stops.

#hash
days = { "Monday" => 10, "Tuesday" => 11, "Wednesday" => 12 }
puts "\n"
p days
puts days.reject {|day_name,day_number| day_number > 11}  
p days

#array
arr = [100, 200, 300, 400, 50, 600]
arr.reject! { |a| a < 200 }  
puts "\n"
puts arr                         

