# pseudocode and write a method "Felicia Torres"
# creates a fake name by doing the following:

# Swap first and last name
# Change vowels to the next vowel in 'aeiou' 
# Change consonants to the next consonant in the alphabet. 

# # # PSEUDOCODE # # #
# create new array with values for each of 2 names
# lowercase all letters
# reverse the order of the 2 values
# break each array into 2 hashes (consonants and values)
# advance consonants and values as appropriate
# capitalize first letters
# compare result to "Vussit Gimodoe"


def alias_manager(str)
  orig_name = "#{str}".downcase
  new_alias = []
  new_alias = orig_name.split.reverse
  p orig_name
  p new_alias

  name0 = []
  name0 = new_alias[0].chars
  p name0

  name1 = []
  name1 = new_alias[1].chars
  p name1

  p vowels = ["a","e","i","o","u"]
  
  name0.map! { |name0| name0.next}
  name1.map! { |name0| name0.next}
  p name0
  p name1
  
end

alias_manager("Felicia Torres")