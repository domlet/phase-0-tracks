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

  attr_reader :article
  attr_accessor :color, :fabric_content, :is_clean, :year

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
    puts "We used scissors to hem! Previously '#{article}' is now '#{altered}'"
  end

  def dye(color)
    puts "*** Now dying the #{@color} item #{color}. ***"
    @color = color
    puts "Success! The item is now #{@color}." 
  end

  # def create_new_article(number)
  #   number.times do
  #   wardrobe << Clothing.new
  # end

end

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

# Your user should be allowed to create as many instances of your class as they like.
# Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type. Store these class instances in an array.



# When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation message of what was created.

