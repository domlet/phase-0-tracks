module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end

end

# Add driver code underneath your module declaration that calls both of your module methods.

Shout.yell_angrily("Hello")

Shout.yell_happily("Goodbye")

