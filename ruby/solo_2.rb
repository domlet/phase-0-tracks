# class Clothing
# Attributes:
  # color (string)
  # fabric_content (string)
  # article (string)
  # is_clean (true)
  # year (integer)
# Methods:
  # wash
  # hem
  # dye 

class Clothing

  attr_reader :article, :fabric_content
  attr_accessor :color, :is_clean, :year

  def initialize(color, fabric_content, article, is_clean, year)
    puts "--------
    Creating new article of clothing:
    Color: #{color}
    Fabric content: #{fabric_content}
    Article: #{article}
    Is clean: #{is_clean}
    Year: #{year}\n--------"
    @color = color
    @fabric_content = fabric_content
    @article = article
    @is_clean = true
    @year = nil
  end

  def wash(article)
    is_clean = true
    puts "Washing the #{article}. Is the #{article} clean? #{is_clean}."
  end

  def hem(article)
    altered = article[0...-2]
    puts "We used scissors to hem! Previously boring '#{article}' is now trendy '#{altered}'"
  end

  def dye(color)
    puts "*** Now dying the #{@color} item #{color}. ***"
    @color = color
    puts "Success! The item is now #{@color}." 
  end

end

# Testing
wardrobe = []

red_jeans = Clothing.new("red", "cotton/spandex", "jeans", false, 2006)
wardrobe << red_jeans
p red_jeans
p wardrobe

red_jeans.wash("jeans")
red_jeans.hem("jeans")

fancy_blouse = Clothing.new("white", "silk", "blouse", false, 2001)
fancy_blouse.dye("hot pink")
wardrobe << fancy_blouse
p fancy_blouse
p wardrobe

# Your user should be allowed to create as many instances of your class as they like.

  puts "How many articles of clothing should we make? Enter a number."
  create_quantity = gets.chomp.to_i
  
  create_quantity.times do
    puts "Awesome. We're gonna make #{create_quantity}."
    print "Color: "
    color = gets.chomp
    print "Fabric content: "
    fabric_content = gets.chomp
    print "Article: "
    article = gets.chomp
    print "Is clean? y/n: "
    is_clean = gets.chomp
    print "Year (number): "
    year = gets.chomp.to_i
    puts "Thanks for the info!"

    # # Store these class instances in an array.

    wardrobe << Clothing.new(color, fabric_content, article, is_clean, year)

  end

# When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation message of what was created.

  puts "Here's what's in your wardrobe:"
  wardrobe.length.times do |i|
    puts "#{wardrobe[i].color.ljust(10)} | #{wardrobe[i].fabric_content.ljust(18)} | #{wardrobe[i].article.ljust(10)} | #{wardrobe[i].is_clean} | #{wardrobe[i].year}"
  end  

