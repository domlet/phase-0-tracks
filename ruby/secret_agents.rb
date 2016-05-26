def encrypt(string)
  index = 0
  encrypted_string = ""
  while index < string.length
    if string[index] == " "
      encrypted_string += " "
    else 
      encrypted_string += string[index].next
    end
    index += 1
  end
  p encrypted_string
end

encrypt("a b c")
