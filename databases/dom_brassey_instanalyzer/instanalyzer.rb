# # require gems
# require 'sqlite3'

# # create SQLite3 database
# db = 

# create_database = CREATE TABLE IF NOT EXISTS (
#   id = INTEGER PRIMARY KEY,
#   text_entry = VARCHAR(255)
#   hash)

class Instanalyzer

  attr_accessor :user_entry, :word_count_array, :tag_count_array

  def initialize
    puts "Initializing new Instanalyzer..."
    @user_entry = user_entry
    # @user_entry_array = user_entry_array
    @word_count_array = word_count_array
    @tag_count_array = tag_count_array
    # @word_ct = word_ct
    # @tags_ct = tag_ct
  end

  def take_user_entry
    puts "Paste your Instagram caption here:"
    user_entry = gets.chomp
    user_entry_array = user_entry.split 
    p user_entry_array
  end

  def word_count(text)
    word_count_array = text.split
    word_ct = word_count_array.length
    puts "Words: #{word_ct}"
  end

end

# DRIVER CODE

test = Instanalyzer.new
test.take_user_entry
# user_entry.word_count
# p test

# user_entry = "The #WeAreOrlando shooting has moved Latinx/Black-focused #techdiversity and workforce development pioneer @code2040 to double down on #LGBTQ inclusion and support. I read in the news that one of the families of the victims at first refused to claim his body. Shame. Do you have any family you want to leave on the bathroom floor? I don’t.
# I walk through the streets of the #Tenderloin in #SanFrancisco. We got murals. But there are unclaimed bodies here, too. Are these your 'neighbors'? Diabetics with their feet rotting off. The unconscious derelict slumped in defecate. Contaminated, contagious people. Stuttering lunatics and howling ghosts. 
# We walk by the living. We pay money to watch #TheWalkingDead. We give guns to police because we want someone to wash our sins from the Earth. Every great wall is a monument to what we are willing to sacrifice for wealth.
# #endwhitesilence #gentrification #homelessness #economicjustice #zombies #healthcare #communityorganizing #diversityintech #POCintech #LGBT #androgynous #queer #softbutch #femalemasculinity #feminism #tomboy #boi #lesbian #queersofig #dapperQ #genderfluid #sartorial #ootd #wiwt"

# count words

# count tags
# tags_ct = word_count_array.select  { |word| word[0, 1] == "#" } 
# puts "Tags: #{tags_ct.length}"

# delete periods
# word_count_array.delete(-1)  { |char| char[-1] == "." } 
