def encrypt(string)
  index = 0
  encrypted_string = ""
  while index < string.length
    # respect space character 
    if string[index] == " "
      encrypted_string += " "
    else 
      # respect edge case of z's 
      if string[index] == "z"
        encrypted_string += "a"
      else 
        encrypted_string += string[index].next
      end 
    end
    index += 1
  end
  encrypted_string
end

# p encrypt("abc")

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0 
  decrypted_string = "" 

  while index < string.length 
    current_letter = string[index]
    alphabet_index = alphabet.index(current_letter)

     # respect space character 
    if current_letter == " "
      decrypted_string += " "
    else 
      previous_letter = alphabet[alphabet_index - 1] 
      decrypted_string += previous_letter
    end 
    index += 1 
  end 
  decrypted_string
end 

# test everything, trust no one
# these mehods are exact opposites, therefore calling them both equals no change.
# below, encrypt will run first, then decrypt will run second. 
# p decrypt(encrypt("swordfish"))

# DRIVER CODE

# Ask user whether they would like to decrypt or encrypt a password
puts "Would you like to decrypt or encrypt a password?"
puts "Please enter 'decrypt' or 'encrypt'."
answer = gets.chomp 

# Asks them for the password
puts "Please tell us the secret password."
password = gets.chomp

# Conduct the requested operation, print to the screen, exit.
if answer == "encrypt"
  p encrypt(password)
else answer == "decrypt"
  p decrypt(password)
end

# p encrypt("abc")
# p encrypt("zed")
# p decrypt("bcd")
# p decrypt("afe")
