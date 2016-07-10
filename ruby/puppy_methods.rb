class Puppy

  def initialize
     puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(y)
    x = 0
    while x < y
      puts "Woof!"
      x += 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(a)
    dog_age = a * 7
    puts dog_age
  end

# Add one more trick

  def destroy(item)
    puts "You destroyed my #{item}! Bad dog. I love you."
  end

end

# Add driver code at the bottom that initializes an instance of Puppy
scooter = Puppy.new
# Verify that your instance can now fetch a ball. 
toy = "shoe"
scooter.fetch(toy)
scooter.fetch("pork chop")
scooter.speak(5)
scooter.roll_over
scooter.dog_years(5)
scooter.destroy("laptop")

puts "\n # # # \n\n"

# # # # # # # # # # # # # # # # # # 




# class Baby

#   def initialize
#     puts "Welcome, baby!"
#   end

#   def primal_scream
#     puts "AAAAAAHHHHHHH"
#   end

#   def diaper_change
#     if poop == true
#       puts "You gotta change that baby's diaper."
#     else
#       puts "This baby smells good."
#     end
#   end

# end


# 5.times do 
#   Family = [] << Baby.new
# end

# p Family




