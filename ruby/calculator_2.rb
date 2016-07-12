# Q2: Write a calculate method that takes three parameters

def calculate(int1, symbol, int2)
  eval "#{int1} #{symbol} #{int2}"
end

# Q3: Write driver code that tests all four operations and prints the results.

# p calculate(4, '+', 5) == 9
# p calculate(4, '-', 5) == -1
# p calculate(4, '*', 5) == 20
# p calculate(20, '/', 5) == 4

# Q4: allow the user to do as many calculations as they want (so the user might enter 3 + 4, receive the answer, and then enter 7 - 1 as the next calculation, and so on). When the user types "done" instead of a calculation, the program can exit.

def calculate_input(user_input)
  if user_input == 'done'
    puts "Thank you, this has been awesome."
    exit
  else
    operation = user_input.split
    int1 = operation[0].to_i
    symbol = operation[1]
    int2 = operation[2].to_i
    p eval "#{int1} #{symbol} #{int2}"
    puts " Request an operation, like '4 + 5':\nOr type 'done' to exit."
    next_operation = gets.chomp
    calculate_input(next_operation)
  end
end

