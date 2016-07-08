module Shout

  def self.yell_angrily(words)
     words + "!!!" + " :("
  end

  def self.yell_happily(words)
     words + "!!!" + " :)"
  end

end

# Add driver code underneath your module declaration that calls both of your module methods.

puts Shout.yell_angrily("Hello")

puts Shout.yell_happily("Goodbye")