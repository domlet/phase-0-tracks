
# at least three attributes (using at least two data types) 
# whose values will vary from instance to instance (example: age)

  # name
  # attitude
  # age

# at least three methods, at least one of which takes an argument

class Barrista

attr_reader :name
attr_accessor :attitude, :age

# Use an initialize method that sets at least one attribute

  def initialize(name, attitude, age)
    puts "One more #{Barrista} has joined us."
    @name = name
    @attitude = attitude
    @age = age
  end

  def list_barristas
    staff = []
    staff.each do |i|
    puts i    
  end

  def greeting
    puts "Hi, I'm #{name}, what can I get for you?"
  end

  def pull_shot(single_or_double)
    puts "Your #{single_or_double} shot is ready!"
  end

  def break(mins)
    chillin = 0
    while chillin < mins
      puts "one pure minute of chillin"
      chillin += 1
    end
  end

end

# # # # # # 

Andre = Barrista.new("Andre", "Relaxed", 22)
Andre.greeting
Andre.pull_shot("single")
Andre.break(5)

# Add user interface 
# (a user can interact with your program via the command line).
# User can create as many instances of your class as they like.

puts "### WELCOME USER ###"
puts "How many instances would you like to create? (Enter integer.)"
number_of_instances = gets.chomp.to_i
staff = []
number_of_instances.times do 
  staff = [] << Barrista.new("Name", "Cool", 23)
end
p staff

list_barristas

# Prompt the user for each attribute, 
# and don't forget to convert their input to the appropriate data type. 
# Store these class instances in an array.

# When the user indicates that they are finished creating instances, 
# loop through the array and print out the attributes of each instance 
# as a confirmation message of what was created.
