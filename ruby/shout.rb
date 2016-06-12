# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end


# puts Shout.yell_angrily("oh my god")
# puts Shout.yell_happily("oh my god")

# mixin version of Shout module

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end
end

class Person
  include yell_angrily(words)
  include yell_happily(words)
end

person = Person.new
puts Person.yell_angrily("oh my god")
puts Person.yell_happily("oh my god")

