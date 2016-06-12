class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = "" 
    @ethnicity = ""
  end

    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!" 
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!" 
  end

end

gregory = Santa.new("nonbinary","albino")

gregory.speak

gregory.eat_milk_and_cookies("Oreo")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santas.each do |age|
  puts "Creating a santa named #{name} ..."
  puppies << Puppy.new(name)
  puts "There are now #{puppies.length} Puppy instances in the array"
  puts "----"
end


# Add three attribute-changing methods to your Santa class:

# celebrate_birthday should age Santa by one year.

# get_mad_at can take a reindeer's name as an argument, and move that 
# reindeer in last place in the reindeer rankings. Vixen knows what he did.

# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.

# Add two "getter" methods as well:
# The method age should simply return @age.
# The method ethnicity should return @ethnicity.

# Update your driver code to test your work.

