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

class Nachos

  attr_reader 
  attr_accessor :order_is_wrong, :order_number, :order_numbers

  def initialize
    order_number = nil
    puts "Nachos on the way..."
  end

  def announce
    print "Your nachos are ready!"
  end

  def wrong_order(order_is_wrong)
    if order_is_wrong == true
      puts "This is not what I ordered. Can you correct my order?"
    elsif 
      puts "Thank you for the correct order!"
    end
  end

  # def give_order_numbers(number_of_orders)
  #   order_numbers = Array (1..50)
  #   puts order_numbers
  # end

end

# # # 

order_421 = Nachos.new
p order_421

nacho_orders = []
50.times do
  nacho_orders << Nachos.new
end
p nacho_orders
p nacho_orders[12]

order_421.announce

order_421.wrong_order(true)
order_421.wrong_order(false)

nacho_orders.each do |i|
  i.announce
end

nacho_orders.each do |i|
  i.wrong_order(false)
end

# order_numbers = Array (100..150)
# p order_numbers

# nacho_orders.each do |i|
# order_number = 1
# end
# p nacho_orders