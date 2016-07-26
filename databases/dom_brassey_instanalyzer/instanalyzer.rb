# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("captions.db")
db.results_as_hash = false

time = Time.new

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

# add a test kitten
# db.execute("INSERT INTO captions (caption, words_ct) VALUES ('Bob hi', 100)")

# PRINT ROWS AFTER X
p rows = db.execute("SELECT * from captions WHERE id < 20")
puts "\n"
rows.each do |id, caption, words, tags, words_ct, tags_ct|
  puts "
    id = #{id} 
    caption = #{caption} 
    words = #{words}
    tags = #{tags}
    words_ct = #{words_ct}
    tags_ct = #{tags_ct}
"
end
puts "\n"


# update a value
# db.execute("SET caption = 'John' WHERE tags_ct='6'")

  def word_count(db, caption, *args)
    user_input = caption #string
    word_count_array = caption.split #array
    words_ct = word_count_array.length #int (count the words)
    tag_count_array = word_count_array.select {|word| word[0, 1] == "#" } 
    tags_ct = tag_count_array.length
    puts "Words: #{words_ct}"
    puts "Tags: #{tags_ct}"
    puts "word_count_array: #{word_count_array}"
    puts "tag_count_array: #{tag_count_array}"
    db.execute("INSERT INTO captions (caption, words, tags, words_ct, tags_ct) VALUES (?,?,?,?,?)", [caption, 1, 2, 3, 4])
  end

puts "// This application will analyze your Instagram captions.\n//Please paste your Instagram caption here:\n"
word_count(db, gets.chomp)


# def create_kitten(db, name, age)
#   db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
# end

# create_caption(db, caption)


# db.execute("INSERT INTO captions (caption, words, tags, words_ct, tags_ct) VALUES (?,?,?,?,?)", [user_input, word_count_array, tag_count_array, words_ct, tags_ct])

# count occurrences of a particular tag
# display last 3 captions
# tabulate top 10 tags







