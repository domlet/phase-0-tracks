# Q2: Write a calculate method that takes three parameters

def calculate(int1, symbol, int2)
  eval "#{int1} #{symbol} #{int2}"
end

# Q3: Write driver code that tests all four operations and prints the results.

# p calculate(4, '+', 5) == 9
# p calculate(4, '-', 5) == -1
# p calculate(4, '*', 5) == 20
# p calculate(20, '/', 5) == 4

# Q4: allow the user to do as many calculations as they want. When the user types "done" instead of a calculation, the program can exit.
# Q5: When the user has finished performing calculations, but just before the program exits, print a count of the calculations performed, and a history of all the calculations that have been performed

calculations = []

# def summary
#  calculations.each |i|
#  p "#{calculations}"[i]
# end

loop do 
    puts "Request an operation, like '4 + 5':\nOr type 'done' to exit."
    user_input = gets.chomp
  if user_input == 'done'
    puts "Thank you, this has been awesome."
    number_of_calculations = calculations.length
    puts "#{number_of_calculations} calculations performed:"
    calculations.each do |i|
      puts "#{calculations}"[i]
    end
    exit
  else
    operation = user_input.split
    int1 = operation[0].to_i
    symbol = operation[1]
    int2 = operation[2].to_i
    answer = eval "#{int1} #{symbol} #{int2}"
    calculation = "#{user_input}" + " = " "#{answer}"
    puts calculation
    calculations.push(calculation)
  end
end

