# note to self to use https://stackoverflow.com/questions/5648198/rails-3-remove-items-belonging-to-array-b-from-array-a

# pseudocode and write a method "Felicia Torres"
# creates a fake name by doing the following:

# Swap first and last name
# Change vowels to the next vowel in 'aeiou' 
# Change consonants to the next consonant in the alphabet. 

# # # PSEUDOCODE # # #
# create new array with values for each of 2 names
# lowercase all letters
# reverse the order of the 2 values
# create hash for vowels, hash for consonants
# identify consonants and vowels and apply behavior to advance letters as appropriate, referencing vowel hash and consonant hash
# capitalize first letters
# compare result to "Vussit Gimodoe"


def alias_manager(str)
  orig_name = "#{str}".downcase
  new_name = orig_name.split.reverse
  name0 = new_name[0].chars
  name1 = new_name[1].chars

  # letter sets (for reference)
  vowels = ["a","e","i","o","u"]
  consonants = ["b,", "c,", "d,", "f,", "g,", "h,", "j,", "k,", "l,", "m,", "n,", "p,", "q,", "r,", "s,", "t,", "v,", "w,", "x,", "y,", "z"]
  
  # advance consonants (unfinished)
  name0.map! { |name0| name0.next}
  name1.map! { |name0| name0.next}
  p name0
  p name1
  
  # capitalize
  name0_string = name0.join('').capitalize
  name1_string = name1.join('').capitalize
  puts "#{name0_string} " + "#{name1_string}"
  
end

alias_manager("Felicia Torres")