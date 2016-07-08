# Comment out the old code in shout.rb, and make a mixin version of the Shout module instead.

# module Shout

#   def self.yell_angrily(words)
#      words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#      words + "!!!" + " :)"
#   end

# end

module Shout

  def yell_angrily(words)
     puts "#{words}" + "!!!" + " :("
  end

  def yell_happily(words)
     puts "#{words}" + "!!!" + " :)"
  end

end

# Add driver code underneath your module declaration that calls both of your module methods.

# puts Shout.yell_angrily("Hello")
# puts Shout.yell_happily("Goodbye")

# Write two classes representing anything that might shout, and include the Shout module in those classes.

class Police
  include Shout
end

class Protestor
  include Shout
end

# Test your work by adding driver code at the bottom of the file that instantiates instances of your classes and calls the two module methods on each instance.

person1 = Protestor.new
person2 = Police.new

20.times do |x|
  person1.yell_angrily("No Justice")
  person2.yell_angrily("No Peace")
end

20.times do |x|
  person1.yell_happily("Black Lives Matter")
  person2.yell_happily("Black Lives Matter")
end