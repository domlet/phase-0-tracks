# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)


# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # something like gets.chomp
  # set default quantity - will probably be "1"
  # print the list to the console [can you use one of your other methods here?] - puts, p, print?
# output: [what data type goes here, array or hash?] HASH



def create_list()
  grocery_list = {}

end

# my_list = create_list("carrots apples cereal pizza")
# p my_list

my_list = {}
my_list.push("pie" => 2)
p my_list



# Method to add an item to a list
# input: item name and optional quantity
# steps: add to hash using a method
# output: print the array

# Method to remove an item from the list
# input: refer to pair by key
# steps: use method to remove the index/key pair from the array
# output: print the array

# note to self, remember KEYs are unique

# Method to update the quantity of an item
# input: use the key to reference the item
# steps: modify the index, which is the value
# output: print the array

# Method to print a list and make it look pretty
# input: array
# steps: use fancy puts to make it cute
# output: print to screen


