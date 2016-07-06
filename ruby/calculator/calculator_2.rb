# Write a calculate method that takes three parameters: an integer, an operator string (example: "+"), and another integer. The method should execute the operation and return the result, an integer. The method should be able to handle the +, -, *, and / operations. For example, calculate(4, '+', 5) should return 9.

# allow the user to do as many calculations as they want (so the user might enter 3 + 4, receive the answer, and then enter 7 - 1 as the next calculation, and so on). When the user types "done" instead of a calculation, the program can exit.

def calculate_input(x)
  if x == 'done'
    puts "Thank you, this has been awesome."
    exit
    elsif
    operation = []
    operation = x.split
    p operation
    a = operation[0]
    op = operation[1]
    c = operation[2]
    a.to_i
    c.to_i
    p eval "#{a} #{op} #{c}"
    puts " Request an operation, like '4 + 5':\nOr type 'done' to exit."
    next_operation = gets.chomp
    calculate_input(next_operation)
  end
end

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

puts "Request an operation, for example '4 + 5': " 
p calculate_input(gets.chomp)


