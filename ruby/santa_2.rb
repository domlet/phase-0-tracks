class Santa

attr_reader :age, :ethnicity
attr_accessor :gender

def initialize(gender, ethnicity)
  puts "Initializing #{gender} #{ethnicity} Santa instance ..."
  @gender = gender
  @ethnicity = ethnicity
  @age = 0
  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
end

def speak
  puts "Ho, ho, ho! Haaaappy holidays!" 
end

def eat_milk_and_cookies(type)
  puts "That was a good #{type}!" 
end

def celebrate_birthday 
  @age += 1
  p age
end

def get_mad_at(reindeer_name)
  puts "Santa got mad at #{reindeer_name}! They know what they did!"
  reindeer_index = @reindeer_ranking.index(reindeer_name)
  @reindeer_ranking.delete_at(reindeer_index)
  @reindeer_ranking.push(reindeer_name)
  p @reindeer_ranking
end

end

# testing
shirley = Santa.new("female,","n/a")
shirley.speak
shirley.eat_milk_and_cookies("pot")
shirley.celebrate_birthday
shirley.celebrate_birthday
shirley.get_mad_at("Rudolph")

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

p santas

# Release 4: Build Many, Many Santas

random_santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do |i|
  random_santas << Santa.new(genders.sample, ethnicities.sample)
end
