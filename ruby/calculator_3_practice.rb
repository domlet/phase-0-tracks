def calculate(int1, operator, int2)
  case operator
  when '+'
    int1 + int2
  when '-'
    int1 - int2
  when '*'
    int1 * int2
  when '/'
    int1 / int2
  end
end

# p calculate(2, '+', 3)
# p calculate(5, '-', 1)
# p calculate(4, '*', 4)
# p calculate(12, '/', 2)

loop do
  puts "What calculation would you like to perform?\nFormat: 'x + y' or 'done' to exit."
  user_input = gets.chomp
  user_input = user_input.split(' ') # creates array using spaces

  if user_input == 'done'
    puts = "Done."
    break
  end

  user_int1 = user_input[0].to_i
  symbol = user_input[1]
  user_int2 = user_input[2].to_i

  print "Answer: "
  p calculate(user_int1, symbol, user_int2)

end

