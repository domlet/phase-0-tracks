# Method to print a list and make it look pretty
# input: the list
# steps: iterate over the hash, print the contents
# output: the pretty list


def pretty_list(list)
    list.each {|x, y| puts "#{x}: #{y}"}
end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
    # prompt the user for a string of items separated by spaces
    # take input
    # split into an array
    # iterate over the array, inserting items into a hash
    # set default quantity to 1
    # print the list to the console Hash.keys [can you use one of your other methods here?]
# output: a hash

groc_list = {}


puts "What is on your grocery list?\nList items separated by spaces."
list_array = gets.chomp.split(" ")

groc_list = Hash[list_array.map {|x| [x, 1]} ]

pretty_list(groc_list)





# Method to add an item to a list
# input: the list, item name and optional quantity
# steps: add item as new key in hash with value of 1
# output: the updated hash

def add_item(list, item, quantity)
    list[item] = quantity 
    puts list
end




# remove(list, koolaid)
# Method to remove an item from the list
# input: the list, item name
# steps: delete the item from the hash by referencing its key
# output: the updated hash


def remove_item(list, item)
    list.delete_if {|key, value| key == item }
    puts list
end





# Method to update the quantity of an item
# input: the list, item name, new quantity
# steps: select by key, reassign value
# output: the updated hash

def update_quantity(list, item, quantity)
    list[item] = quantity
    puts list
end


create_list
add_item(groc_list, "koolaid", 1)
remove_item(groc_list, "koolaid")
update_quantity(groc_list, "Ice Cream", 4)


# Release 5: Reflect

# What did you learn about pseudocode from working on this challenge?
# If you're consistent in your pseudocode, it lays out a formula for your actual code.

# What are the tradeoffs of using arrays and hashes for this challenge?
Well, you can't well associate a quantity with an item if you're only using an array, hehe.
# What does a method return?

# What kind of things can you pass into methods as arguments?

# How can you pass information between methods?

# What concepts were solidified in this challenge, and what concepts are still confusing?


