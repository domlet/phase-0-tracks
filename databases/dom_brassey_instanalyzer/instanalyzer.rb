# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("captions.db")
db.results_as_hash = false

# time = Time.new

# add method using string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS captions (
    id INTEGER PRIMARY KEY,
    caption VARCHAR(255),
    words VARCHAR(255),
    tags VARCHAR(255),
    words_ct INT,
    tags_ct INT)
SQL

# create a captions table
db.execute(create_table_cmd)

# PRINT ROWS AFTER X
rows = db.execute("SELECT * from captions WHERE id > 20")
puts "\n"
rows.each do |id, caption, words, tags, words_ct, tags_ct|
  puts "id:".ljust(12) + "#{id}"
  puts "caption:".ljust(12) + "#{caption}"
  puts "words:".ljust(12) + "#{words}"
  puts "tags:".ljust(12) + "#{tags}"
  puts "words_ct:".ljust(12) + "#{words_ct}"
  puts "tags_ct:".ljust(12) + "#{tags_ct}\n\n"
end
puts "\n"

  def word_count(db, caption)
    user_input = caption #string
    word_count_array = caption.split #array
    words_ct = word_count_array.length #int (count the words)
    tag_count_array = word_count_array.select {|word| word[0, 1] == "#" } 
    tags_ct = tag_count_array.length
    puts "Words: #{words_ct}"
    puts "Tags: #{tags_ct}"
    puts "word_count_array: #{word_count_array}"
    puts "tag_count_array: #{tag_count_array}"
    # put info in the db
    db.execute("INSERT INTO captions (caption, words, tags, words_ct, tags_ct) VALUES (?,?,?,?,?)", [caption, 1, 2, 3, 4])
  end

puts "// This application will analyze your Instagram captions.\n//Please paste your Instagram caption here:\n"
word_count(db, gets.chomp)



# db.execute("INSERT INTO captions (caption, words, tags, words_ct, tags_ct) VALUES (?,?,?,?,?)", [user_input, word_count_array, tag_count_array, words_ct, tags_ct])

# count occurrences of a particular tag
# display last 3 captions
# tabulate top 10 tags







