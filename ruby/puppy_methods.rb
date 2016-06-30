class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

# Add a speak method that takes an integer
# and then prints "Woof!" that many times.

  def speak(y)
    x = 0
    while x < y
      puts "Woof!"
      x += 1
    end
  end

# Add a roll_over method that just prints "*rolls over*".

  def roll_over
    puts "*rolls over*"
  end

# Add a dog_years method that takes an integer (of human years) 
# and converts that number to dog years, returning a new integer.

  def dog_years(a)
    dog_age = a * 7
    puts dog_age
  end

# Add one more trick -- whichever one you'd like.

  def destroy(item)
    puts "You destroyed my #{item}! Bad dog. I love you."
  end

# Add a method to your Puppy class named initialize. 
# It should print "Initializing new puppy instance ..."

  def initialize
     puts "Initializing new puppy instance ..."
  end

end

# Add driver code at the bottom that initializes an instance of Puppy
# Verify that your instance can now fetch a ball. 

scooter = Puppy.new

toy = "shoe"
scooter.fetch(toy)

scooter.fetch("pork chop")

scooter.speak(5)

scooter.roll_over

scooter.dog_years(5)

scooter.destroy("laptop")


# # # # # # # # # # # # # # # # # # 
class Baby

  def initialize
    puts "Welcome, baby!"
  end

  def primal_scream
    puts "AAAAAAHHHHHHH"
  end

  def diaper_change
    if poop == true
      puts "You gotta change that baby's diaper."
    else
      puts "This baby smells good."
    end
  end

end


5.times do 
  Family = [] << Baby.new
end

p Family




