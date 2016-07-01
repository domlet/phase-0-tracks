# Write a calculate method that takes three parameters: an integer, an operator string (example: "+"), and another integer. The method should execute the operation and return the result, an integer. The method should be able to handle the +, -, *, and / operations. For example, calculate(4, '+', 5) should return 9.

def calculate(a, op, c)
  a.to_i
  c.to_i
  eval "#{a} #{op} #{c}"
end

# Write driver code that tests all four operations and prints the results.

p calculate(4, '+', 5)
p calculate(4, '-', 5)
p calculate(4, '*', 5)
p calculate(4, '/', 5)

# Prompt the user for a calculation that the user would like to perform, and use your method to give the user a result. For instance, if the user types "4 + 5", the program should print a result of 9 and then exit. You can assume correct input on the user's part.

